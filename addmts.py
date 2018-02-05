# Converts a MIDI file from LilyPond to use MIDI Tuning Standard messages
# instead of pitch bend.  Works with TiMidity++.

import os.path, sys, re

noteOnPattern = b'([\x90-\x9f][\x00-\x7f][\x01-\x7f])'
pitchBendPattern = b'([\xe0-\xef][\x00-\x7f][\x00-\x7f]\x00)'
tunedNotePattern = pitchBendPattern + noteOnPattern

# After pitch bends translated to MTS:
untunedNotePattern =  b'([^\xf7][\x00-\x7f])' + noteOnPattern

# Note off (captured) followed immediately by centered pitch bend
noteOffPattern = b'([\x90-\x9f][\x00-\x7f]\x00)\x00[\xe0-\xef]\x00\x40'

def applyMTS(track):
    channels = set()

    for bend, noteon in set(re.findall(tunedNotePattern, track)):
        channel, key = ord(noteon[0])&0xf, ord(noteon[1])
        channels.add(channel)
        assert (ord(bend[0])&0xf) == channel
        bendSize = (ord(bend[2])<<7) + ord(bend[1])
        # 14 bits total, 12 of fine tuning, 2 of coarse (+/- 2 semitones)
        coarse = key + (bendSize >> 12) - 2
        # MTS fine tuning is 14 bits total
        fine = (bendSize << 2) & 0x3fff
        mts = mtsMessage(channel, key, coarse, fine)
        new = mts + b'\x00' + noteon
        track = track.replace(bend + noteon, new)

    for prelude, noteon in set(re.findall(untunedNotePattern, track)):
        channel, key = ord(noteon[0])&0xf, ord(noteon[1])
        channels.add(channel)
        mts = mtsMessage(channel, key, key, 0)
        new = prelude + mts + b'\x00' + noteon
        track = track.replace(prelude + noteon, new)

    rpns = b''.join([setTuningTable(channel) for channel in channels])
    return rpns + re.sub(noteOffPattern, b'\\1', track)

def mtsMessage(channel, key, coarse, fine):
    device = program = channel
    length, changes = 11, 1
    mts = byteString([0xf0, length, 0x7f, device, 0x08, 0x02,
        program, changes, key, coarse, fine>>7, fine&0x7f, 0xf7])
    assert len(mts) == length + 2, mts
    return mts

def setTuningTable(channel):
    control = 0xB0 + channel
    MSB = [0, control, 101, 0]
    LSB = [0, control, 100, 3]
    return byteString(MSB + LSB + [0, control, 6, channel])

def convertFile(old, new):
    writeChunk(getChunk(old, b'MThd'), b'MThd', new)
    for track in getTracks(old):
        writeChunk(applyMTS(track), b'MTrk', new)

def getTracks(stream):
    while True:
        yield getChunk(stream, b'MTrk')
    assert stream.read() == b''

def getChunk(stream, tag):
    if stream.read(4) != tag:
        raise StopIteration('End of file')
    return stream.read(uint(stream.read(4)))

def writeChunk(midi, tag, output):
    output.write(tag)
    output.write(bigEndian32(len(midi)))
    output.write(midi)

def bigEndian32(i):
    """Integer to byte stream"""
    return byteString([x&0xFF for x in (i>>24, i>>16, i>>8, i)])

def byteString(intarray):
    return b''.join([chr(i) for i in intarray])

def uint(s):
    """Big endian byte stream to integer"""
    result = 0
    for byte in s:
        result = (result<<8) + ord(byte)
    return result

if __name__=='__main__':
    filename = sys.argv[1]
    if len(sys.argv) > 2:
        outname = sys.argv[2]
    else:
        root, ext = os.path.splitext(filename)
        outname = root + '-mts' + ext
    with open(filename, 'rb') as old:
        with open(outname, 'wb') as new:
            convertFile(old, new)
