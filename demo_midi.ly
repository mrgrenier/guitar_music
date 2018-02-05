\header {
  title = "Demo of all midi sounds"
  arranger = "Myself "
}

baseMelody = \relative c' {
  c4.\mf g c16 b' c d
  e16 d e f g4 g'4 r
  R1
}
melody = {
  \tempo 4 = 150
  \baseMelody
}

\score {
  \new Staff <<
    \new Voice \melody
  >>
  \layout { }
}

\score {
  \new Staff <<
    \new Voice {
      r\mf
      \set Staff.midiInstrument = #"acoustic grand" \melody
      \set Staff.midiInstrument = #"bright acoustic" \melody
      \set Staff.midiInstrument = #"electric grand" \melody
      \set Staff.midiInstrument = #"honky-tonk" \melody
      \set Staff.midiInstrument = #"electric piano 1" \melody
      \set Staff.midiInstrument = #"electric piano 2" \melody
      \set Staff.midiInstrument = #"harpsichord" \melody
      \set Staff.midiInstrument = #"clav" \melody
      \set Staff.midiInstrument = #"celesta" \melody
      \set Staff.midiInstrument = #"glockenspiel" \melody
      \set Staff.midiInstrument = #"music box" \melody
      \set Staff.midiInstrument = #"vibraphone" \melody
      \set Staff.midiInstrument = #"marimba" \melody
      \set Staff.midiInstrument = #"xylophone" \melody
      \set Staff.midiInstrument = #"tubular bells" \melody
      \set Staff.midiInstrument = #"dulcimer" \melody
      \set Staff.midiInstrument = #"drawbar organ" \melody
      \set Staff.midiInstrument = #"percussive organ" \melody
      \set Staff.midiInstrument = #"rock organ" \melody
      \set Staff.midiInstrument = #"church organ" \melody
      \set Staff.midiInstrument = #"reed organ" \melody
      \set Staff.midiInstrument = #"accordion" \melody
      \set Staff.midiInstrument = #"harmonica" \melody
      \set Staff.midiInstrument = #"concertina" \melody
      \set Staff.midiInstrument = #"acoustic guitar (nylon)" \melody
      \set Staff.midiInstrument = #"acoustic guitar (steel)" \melody
      \set Staff.midiInstrument = #"electric guitar (jazz)" \melody
      \set Staff.midiInstrument = #"electric guitar (clean)" \melody
      \set Staff.midiInstrument = #"electric guitar (muted)" \melody
      \set Staff.midiInstrument = #"overdriven guitar" \melody
      \set Staff.midiInstrument = #"distorted guitar" \melody
      \set Staff.midiInstrument = #"acoustic bass" \melody
      \set Staff.midiInstrument = #"electric bass (finger)" \melody
      \set Staff.midiInstrument = #"electric bass (pick)" \melody
      \set Staff.midiInstrument = #"fretless bass" \melody
      \set Staff.midiInstrument = #"slap bass 1" \melody
      \set Staff.midiInstrument = #"slap bass 2" \melody
      \set Staff.midiInstrument = #"synth bass 1" \melody
      \set Staff.midiInstrument = #"synth bass 2" \melody
      \set Staff.midiInstrument = #"violin" \melody
      \set Staff.midiInstrument = #"viola" \melody
      \set Staff.midiInstrument = #"cello" \melody
      \set Staff.midiInstrument = #"contrabass" \melody
      \set Staff.midiInstrument = #"tremolo strings" \melody
      \set Staff.midiInstrument = #"pizzicato strings" \melody
      \set Staff.midiInstrument = #"orchestral harp" \melody
      \set Staff.midiInstrument = #"timpani" \melody
      \set Staff.midiInstrument = #"string ensemble 1" \melody
      \set Staff.midiInstrument = #"string ensemble 2" \melody
      \set Staff.midiInstrument = #"synthstrings 1" \melody
      \set Staff.midiInstrument = #"synthstrings 2" \melody
      \set Staff.midiInstrument = #"choir aahs" \melody
      \set Staff.midiInstrument = #"voice oohs" \melody
      \set Staff.midiInstrument = #"synth voice" \melody
      \set Staff.midiInstrument = #"orchestra hit" \melody
      \set Staff.midiInstrument = #"trumpet" \melody
      \set Staff.midiInstrument = #"trombone" \melody
      \set Staff.midiInstrument = #"tuba" \melody
      \set Staff.midiInstrument = #"muted trumpet" \melody
      \set Staff.midiInstrument = #"french horn" \melody
      \set Staff.midiInstrument = #"brass section" \melody
      \set Staff.midiInstrument = #"synthbrass 1" \melody
      \set Staff.midiInstrument = #"synthbrass 2" \melody
      \set Staff.midiInstrument = #"soprano sax" \melody
      \set Staff.midiInstrument = #"alto sax" \melody
      \set Staff.midiInstrument = #"tenor sax" \melody
      \set Staff.midiInstrument = #"baritone sax" \melody
      \set Staff.midiInstrument = #"oboe" \melody
      \set Staff.midiInstrument = #"english horn" \melody
      \set Staff.midiInstrument = #"bassoon" \melody
      \set Staff.midiInstrument = #"clarinet" \melody
      \set Staff.midiInstrument = #"piccolo" \melody
      \set Staff.midiInstrument = #"flute" \melody
      \set Staff.midiInstrument = #"recorder" \melody
      \set Staff.midiInstrument = #"pan flute" \melody
      \set Staff.midiInstrument = #"blown bottle" \melody
      \set Staff.midiInstrument = #"shakuhachi" \melody
      \set Staff.midiInstrument = #"whistle" \melody
      \set Staff.midiInstrument = #"ocarina" \melody
      \set Staff.midiInstrument = #"lead 1 (square)" \melody
      \set Staff.midiInstrument = #"lead 2 (sawtooth)" \melody
      \set Staff.midiInstrument = #"lead 3 (calliope)" \melody
      \set Staff.midiInstrument = #"lead 4 (chiff)" \melody
      \set Staff.midiInstrument = #"lead 5 (charang)" \melody
      \set Staff.midiInstrument = #"lead 6 (voice)" \melody
      \set Staff.midiInstrument = #"lead 7 (fifths)" \melody
      \set Staff.midiInstrument = #"lead 8 (bass+lead)" \melody
      \set Staff.midiInstrument = #"pad 1 (new age)" \melody
      \set Staff.midiInstrument = #"pad 2 (warm)" \melody
      \set Staff.midiInstrument = #"pad 3 (polysynth)" \melody
      \set Staff.midiInstrument = #"pad 4 (choir)" \melody
      \set Staff.midiInstrument = #"pad 5 (bowed)" \melody
      \set Staff.midiInstrument = #"pad 6 (metallic)" \melody
      \set Staff.midiInstrument = #"pad 7 (halo)" \melody
      \set Staff.midiInstrument = #"pad 8 (sweep)" \melody
      \set Staff.midiInstrument = #"fx 1 (rain)" \melody
      \set Staff.midiInstrument = #"fx 2 (soundtrack)" \melody
      \set Staff.midiInstrument = #"fx 3 (crystal)" \melody
      \set Staff.midiInstrument = #"fx 4 (atmosphere)" \melody
      \set Staff.midiInstrument = #"fx 5 (brightness)" \melody
      \set Staff.midiInstrument = #"fx 6 (goblins)" \melody
      \set Staff.midiInstrument = #"fx 7 (echoes)" \melody
      \set Staff.midiInstrument = #"fx 8 (sci-fi)" \melody
      \set Staff.midiInstrument = #"sitar" \melody
      \set Staff.midiInstrument = #"banjo" \melody
      \set Staff.midiInstrument = #"shamisen" \melody
      \set Staff.midiInstrument = #"koto" \melody
      \set Staff.midiInstrument = #"kalimba" \melody
      \set Staff.midiInstrument = #"bagpipe" \melody
      \set Staff.midiInstrument = #"fiddle" \melody
      \set Staff.midiInstrument = #"shanai" \melody
      \set Staff.midiInstrument = #"tinkle bell" \melody
      \set Staff.midiInstrument = #"agogo" \melody
      \set Staff.midiInstrument = #"steel drums" \melody
      \set Staff.midiInstrument = #"woodblock" \melody
      \set Staff.midiInstrument = #"taiko drum" \melody
      \set Staff.midiInstrument = #"melodic tom" \melody
      \set Staff.midiInstrument = #"synth drum" \melody
      \set Staff.midiInstrument = #"reverse cymbal" \melody
      \set Staff.midiInstrument = #"guitar fret noise" \melody
      \set Staff.midiInstrument = #"breath noise" \melody
      \set Staff.midiInstrument = #"seashore" \melody
      \set Staff.midiInstrument = #"bird tweet" \melody
      \set Staff.midiInstrument = #"telephone ring" \melody
      \set Staff.midiInstrument = #"helicopter" \melody
      \set Staff.midiInstrument = #"applause" \melody
      \set Staff.midiInstrument = #"gunshot" \melody
    }
  >>
  \midi { }
}