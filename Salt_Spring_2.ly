%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Salt Spring"
  subtitle = ""
  composer = ""
}

\layout {
  \context {
    \Score
   \omit BarNumber

  }
  indent = 0.0
  \override Voice.StringNumber.stencil = ##f

}
\paper {
  page-count = #1
}

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
  \chordmode  {
    a1 a1 a1 a1 b:m b:m b:m
    fs:m b:m b:m b:m d d d a a a a a a b:m
    b:m b:m fs:m b:m b:m b:m d d d
    a a
    d a d a d a e e
    d a d a d a e e
    a
  }
}

music = {

  \tempo 4 = 120
  \clef moderntab
  \key a \major
  \time 4/4
  \stemDown
  \relative c' {
    \override Score.RehearsalMark.stencil =
    #(make-stencil-boxer 0.15 0.3 ly:text-interface::print)
    \mark \default
    \override Beam.concaveness = #10000
    \set TabStaff.minimumFret = #0
    e4\2 e8. e16\2 fs8\2 e4 fs8\2 ~ fs8\2 e8 cs16 b a8 cs4 cs16 b a cs |
    b4\3 b8. b16\3 cs8\3 b4 cs8\3 ~ cs8\3 b a16 g8. fs4. a8 |
    b4\3 b8. b16\3 cs8\3 b4 cs8\3 ~ cs8\3 b a16 g8. fs4. e8 |
    fs4 a8. a16 b8 a8 fs16 e16 d8 | e2. a16 b16 cs16 d16 |
    e4\2 e8. e16\2 fs8\2 e4 fs8\2 ~ fs8\2 e8 cs16 b a8 cs4 cs16 b a cs |
    b4\3 b8. b16\3 cs8\3 b4 cs8\3 ~ cs8\3 b a16 g8. fs4. a8 |
    b4\3 b8. b16\3 cs8\3 b4 cs8\3 ~ cs8\3 b a16 g8. fs4. e8 |
    fs4 a8. a16 b8 a8 fs16 e16 d8 |
    e2 ~ e8 a16 b16 cs16 b16 a16 g16 | fs4 g4 a4 cs4 | fs,4 g4 a2 |
    fs4 g4 a4 cs4 |
    cs8 b4. ~ b8 a16 b16 cs16 b16 a16 g16 | fs4 g4 a4 cs 4 |
    fs,4 g4 a2 |
    fs4 g4 a4 cs4 | cs8 b4. ~ b4 a16 b cs d | e4 e8. e16 fs8 e4 fs8 ~  |
    fs8 e8 cs16 b16 a8 cs4 cs16 b16 a16 cs |
    b4 b8. b16 cs8 b4 cs8 ~ |
    cs 8 b a16 g8. fs4. a8 |
    b4 b8. b16 cs8 b4 cs8 ~ |
    cs 8 b a16 g8. fs4. e8 |

    fs4 a8. a16 b8 a8 fs16 e16 d8 |
    e2. a16 b16 cs16 d16 | e4 e8. e16 fs8 e4 fs8 ~ |
    fs8 e8 cs16 b a8 cs4 cs16 b16 a16 cs |
    b4 b8. b16 cs8 b4 cs8 ~ | cs8 b8 a16 g8. fs4. a8 |
    b4 b8. b16 cs8 b4 cs8 ~ | cs8 b8 a16 g8. fs4. e8 | fs4 a8. a16 b8 a8 fs16 e d8 |
    e2 ~ e8 a16 b16 cs16 b16 a16 g16 |
    fs4 g4 a4 cs4 | fs,4 g4 a2 |
    fs4 g4 a4 cs4 | cs8 b4. ~ b8 a16 b cs b a g |
    fs4 g4 a4 cs4 |
    fs,4 g4 a2 |
    fs4 g4 a4 cs4 |
    cs8 b4. ~ b4 a16 b16 cs16 d16 |
    e4 e8. e16 fs8 e4 fs8 ~  |
    fs8 e8 cs16 b16 a8 cs4 cs16 b16 a16 cs |
    b4 b8. b16 cs8 b4 cs8 ~ |
    cs8 b8 a16 g8. fs4. a8 |
  }
}


<<
  \new ChordNames {
    \chord_music
  }

  \new TabStaff {
    \tabFullNotation
    \music
  }
>>

\score {
  \new Staff \with {midiInstrument = "acoustic guitar (nylon)"}
  \unfoldRepeats \articulate
  \music
  \midi {
    \tempo 4 = 120
  }
}


