%
%
%
\version "2.19.82"
\header {
  title = "It's Your Thing"
  subtitle = "Funk-n-A"
  arranger = ""
  composer = "Isley Brothers"
  tagline = \markup {
    \column {
      "All Parts"
    }
  }
}

% To make the example display in the documentation
\paper {
  %  paper-width = 130
}
%#(set-global-staff-size 16)
\include "english.ly"

%%%%%%%%%%%% Some macros %%%%%%%%%%%%%%%%%%%

sl = {
  \override NoteHead.style = #'slash
  \hide Stem
}
nsl = {
  \revert NoteHead.style
  \undo \hide Stem
}
crOn = \override NoteHead.style = #'cross
crOff = \revert NoteHead.style

%%%%  Guitar Music %%%%%

guitar_riff_a = {
  <c f>8
  \deadNotesOn <c f a>16 <c f a>16] \deadNotesOff
  <c ds>8
  \deadNotesOn <c f a>16 <c f a>16 \deadNotesOff
  d16 r16 \deadNotesOn <c f a>16 \deadNotesOff r16
  \deadNotesOn <c f a>16 <c f a>16 <c f a>16 <c f a>16 \deadNotesOff |
  <c f>16 <c f>16
  \deadNotesOn <c f a>16 \deadNotesOff <c f>16
  \deadNotesOn <c f a>16 \deadNotesOff c16 ds8 d16 r16
  \deadNotesOn <c f a>16 \deadNotesOff  r16
  \deadNotesOn <c f a>16 <c f a>16 <c f a>16 <c f a>16 \deadNotesOff |
}

guitar_riff_a_low = {
  <c, f>8
  \deadNotesOn <c f a>16 <c f a>16] \deadNotesOff
  <c ds>8
  \deadNotesOn <c f a>16 <c f a>16 \deadNotesOff
  d16 r16 \deadNotesOn <c f a>16 \deadNotesOff r16
  \deadNotesOn <c f a>16 <c f a>16 <c f a>16 <c f a>16 \deadNotesOff |
  <c f>16 <c f>16
  \deadNotesOn <c f a>16 \deadNotesOff <c f>16
  \deadNotesOn <c f a>16 \deadNotesOff c16 ds8 d16 r16
  \deadNotesOn <c f a>16 \deadNotesOff  r16
  \deadNotesOn <c f a>16 <c f a>16 <c f a>16 <c f a>16 \deadNotesOff |
}

guitar_verse_a = {
  <df' f bf>16 <df f bf>16 <df f bf>16 <c ef a>16( <c ef a>16) r16 r16
}

guitar_verse_b = {
  <b\5 d\4 af'\3 b\2>16 <c\5 ef\4 a\3 c\2>16 <c\5 ef\4 a\3 c\2>16 <c\5 ef\4 a\3 c\2>16
  <c\5 ef\4 a\3 c\2>16 r16 \deadNote <c\5 ef\4 a\3 c\2>16
}

guitar_verse_c = {
  <b\5 d\4 af'\3 b\2>16 <c\5 ef\4 a\3 c\2>16 <c\5 ef\4 a\3 c\2>16 <c\5 ef\4 a\3 c\2>16
  <c\5 ef\4 a\3 c\2>16 <c\5 ef\4 a\3 c\2>16 \deadNote <c\5 ef\4 a\3 c\2>16
}

guitar_verse_d = {
  <g'\3 \deadNote b ef\1>( <g\3 \deadNote b ef\1>) <f\3 \deadNote b d\1>16
  <f\3 \deadNote b d\1>16 <f\3 \deadNote b d\1>16 <f\3 \deadNote b d\1>16
  <ef\3 \deadNote b c'\1>16 <ef\3 \deadNote b c'\1>16 <ef\3 \deadNote b c'\1>16 |
}

guitar_verse_e = {
  <c' \deadNote ef a>16 <c \deadNote ef a>16
  \glissando <bf\3  g'\1>16 <bf \deadNote d g>16 <a \deadNote c f>16 <a \deadNote c f>16
  <g \deadNote bf ef>16 <g \deadNote bf ef>16 \deadNote <g,\3  bf ef>16
}

guitar_riff_b = {
  \guitar_verse_a
  \guitar_verse_d

  \guitar_verse_c
  \guitar_verse_e

  \guitar_verse_c
  \guitar_verse_d

  \guitar_verse_b
  \guitar_verse_e

  \guitar_verse_b
  \guitar_verse_d

  \guitar_verse_c
  \guitar_verse_e

  \guitar_verse_c
  \guitar_verse_d

  \guitar_verse_c
  \guitar_verse_e
}

%%%%  Bass Music %%%%%

bass_riff_a = {
  f8 r16 c16[ f,8] r8 bf8 r4. |
  f'16 f8 f8 c16 f,8 bf8 d ef16 ef8 e16 |
}

bass_riff_b = {
  f4 f8. c16 f16 c16 f8 a,16 bf8 c16 |
}

%%%%  Trumpet Music %%%%%

trumpet_riff_a = {
  r2 r8 ef16 d16 ef16 d16 ef16 r16 |
}

trumpet_riff_b = {
  r4 r8. c16 ef16 f16 r16 gs16 r16 gs16 f8 |
}

trumpet_riff_c = {
  r4 a8 r2 r8 | 
}

%%%%  Piano Music %%%%%

piano_riff_a_a = {
  r2 r8. g8. f8 |
  f8 r2 r16 as8. e8 |
  f8 r2 r16 g8. f8 |
}

piano_riff_a_b = {
  r2 r8. g8. f8 |
  f8 r2 r16 as8. e8 |
  f8 r2 r16 g8. f8 |
}

piano_riff_a_c = {
  r2 r8. g8. f8 |
  c8 r2 r16 es8. e8 |
  f8 r2 r16 d8. f8 |
}

piano_riff_a_d = {
  r2 r8. g8. f8 |
  f8 r2 r16 as8. e8 |
  f8 r2 r16 g8. g8 |
}

%% insert chord name style stuff here.

jazzChords = { }

%%%%%%%%%%%% Keys'n'thangs %%%%%%%%%%%%%%%%%

global = {
  \numericTimeSignature \time 4/4
  \tempo 4 = 94
}

Key = { \key f \major }

% ############ Horns ############


% ------ Alto Saxophone ------
alto = \transpose c a \relative c' {
  \Key
  r1 r1 r1 r1
  \trumpet_riff_a
  r1
  \trumpet_riff_a
  r1 r1
  \trumpet_riff_b
  \trumpet_riff_a
  \trumpet_riff_b
  
  \trumpet_riff_c
}
altoHarmony = \transpose c' a {
  \jazzChords
}
altoSax = {
  \global
  \clef treble
  <<
    \alto
  >>
}


% ############ Rhythm Section #############

% ------ Guitar ------
gtr = \relative c {
  \Key
  \set TabStaff.minimumFret = #0
  \stemDown
  \override Beam.concaveness = #10000

  \guitar_riff_a
  \guitar_riff_a
  \guitar_riff_a


  \guitar_riff_a
  \guitar_riff_a
  \guitar_riff_a

  \guitar_riff_b

  \guitar_riff_a_low
  \guitar_riff_a
  \guitar_riff_a
  \guitar_riff_a

  \guitar_riff_b

  \guitar_riff_a_low
  \guitar_riff_a
  \guitar_riff_a
  \guitar_riff_a

  \guitar_riff_b

  \guitar_riff_a_low
  \guitar_riff_a
  \guitar_riff_a
  \guitar_riff_a
}
gtrHarmony = \chordmode {
  \jazzChords
}
guitar = {
  \tabFullNotation
  \global
  <<
    \gtr
  >>
}

%% ------ Piano ------
rhUpper = \relative c''' {
  \voiceOne
  \Key
  \piano_riff_a_a
}
rhLower = \relative c'' {
  \voiceTwo
  \Key
  \piano_riff_a_b
}

lhUpper = \relative c' {
  \voiceOne
  \Key
  \piano_riff_a_c

}
lhLower = \relative c {
  \voiceTwo
  \Key
  \piano_riff_a_d
}

PianoRH = {
  \clef treble
  \global
  <<
    \new Voice = "one" \partcombine \rhUpper
    \new Voice = "two" \rhLower
  >>
}
PianoLH = {
  \clef bass
  \global
  <<
    \new Voice = "one" \partcombine \lhUpper
    \new Voice = "two" \lhLower
  >>
}

piano = {
  <<
    \new Staff = "upper"  \PianoRH
    \new Staff = "lower"  \PianoLH
  >>
}

% ------ Bass Guitar ------
Bass = \relative c, {
  \Key
  \bass_riff_a    \bass_riff_a
  \bass_riff_a    \bass_riff_a
  \bass_riff_a    \bass_riff_a

  \bass_riff_b    \bass_riff_b
  \bass_riff_b    \bass_riff_b
  \bass_riff_b    \bass_riff_b
  \bass_riff_b    \bass_riff_b

  \bass_riff_a    \bass_riff_a
  \bass_riff_a    \bass_riff_a

  %bridge
  \bass_riff_b   \bass_riff_b
  \bass_riff_b   \bass_riff_b
  \bass_riff_b   \bass_riff_b
  \bass_riff_b   \bass_riff_b

  %outro
  \bass_riff_a   \bass_riff_a
  \bass_riff_a   \bass_riff_a

  \bass_riff_b   \bass_riff_b
  \bass_riff_b   \bass_riff_b
  \bass_riff_b   \bass_riff_b
  \bass_riff_b   \bass_riff_b

  \bass_riff_a   \bass_riff_a
  \bass_riff_a   \bass_riff_a


}
bass = {
  \tabFullNotation
  \global
  <<
    \Bass
  >>
}

% ------ Drums ------
up = \drummode {
  \voiceOne
  hh4 <hh sn> hh <hh sn>
  hh4 <hh sn> hh <hh sn>
  hh4 <hh sn> hh <hh sn>
}
down = \drummode {
  \voiceTwo
  bd4 s bd s
  bd4 s bd s
  bd4 s bd s
}

drumContents = {
  \global
  <<
    \new DrumVoice \up
    \new DrumVoice \down
  >>
}

%%%%%%%%% It All Goes Together Here %%%%%%%%%%%%%%%%%%%%%%

\score {
  <<
    \new StaffGroup = "horns" <<
      \new Staff = "altosax" \with {
        instrumentName = #"Alto Sax"
        midiInstrument = #"alto sax"
      }
      \altoSax
    >>

    \new StaffGroup = "rhythm" <<
      \new ChordNames = "chords" \gtrHarmony
      \new TabStaff = "guitar" \with { 
        instrumentName = #"Guitar"
        midiInstrument = #"acoustic guitar (steel)"
      }
      \guitar
      \new PianoStaff = "piano" \with {
        instrumentName = #"Piano"
        midiInstrument = #"acoustic grand"
        printPartCombineTexts = ##f
      }
      \piano
      \new TabStaff = "bass" \with {
        instrumentName = #"Bass"
        midiInstrument = #"fretless bass"
        stringTunings = #bass-tuning
      }
      \bass
      %     \new DrumStaff \with { instrumentName = #"Drums" }
      %     \drumContents
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
    \context {
      \Score
      \override BarNumber.padding = #3
      \override RehearsalMark.padding = #2
      skipBars = ##t
    }
  }
  \midi {
    \tempo 4 = 94
  }
}