%
%
%
\version "2.24.3"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Tall Fiddler"
  subtitle = "Capo 2"
  composer = "Drop D"
}

\layout {
  \context {
    \Score
    \omit BarNumber

  }
  indent = 0.0
  \override Voice.StringNumber.stencil = ##f
}

\include "predefined-guitar-fretboards.ly"
\makeDefaultStringTuning #'guitar-drop-dg-tuning \stringTuning <d, g, d g b e'>

chord_music = {
  \time 4/4
  \chordmode  {
    g1:m 
  }
}

music = {
  \clef moderntab
  \key d \major
  \time 4/4
  \stemDown
  \relative c {
    \override Score.RehearsalMark.stencil =
    #(make-stencil-boxer 0.15 0.3 ly:text-interface::print)
    \mark \default
    \override Beam.concaveness = #10000
    \set TabStaff.minimumFret = #0
    \repeat volta 4 {fs16( g\4) <g d' g>16 <g d' g>16 g8\4 <g d' g>8 fs16( g\4) <g d' g>16 <g d' g>16 g8\4 <g d' g>8 
    fs16( g\4) <g d' g>16 <g d' g>16 g8\4 <g d' g>8 fs16( g\4) <g d' g>16 <g d' g>16 f16( d16) <g d' g>16 <g d' g>16 |}
    \break
    \mark \default
    \repeat volta 2 {<g d' g>16 <g e' g>16 <g d' g>16( b) <d, a' d>16( g) e( d) <d g d'>8 <d a' d>16( g) <d a' d>16( b'8\3) <g d' g>16 |
                     <g d' g>16 <g e' g>16 <g d' g>16( b) <d, a' d>16( g) e( d) <d g d'>8 <d a' d>16( g) <d a' d>8. <g d' g>16 |
                     <g d' g>16 <g e' g>16 <g d' g>16( b) <d, a' d>16( g) e( d) <d g d'>8 <d a' d>16( g) <d a' d>16( b'8\3) d,16 |
     \alternative { \volta 1 {f16 g c e, g c d,8  \tuplet 3/2 {f16( e d) } as8 g8. <g' d' g>16}
                   \volta 2 {f16 g c e, g c d,8  \tuplet 3/2 {f16( e d) } as8 g4}
     }
  }
  
  }
}


<<
  \new ChordNames {
    \chord_music
  }

  \new TabStaff  {
    \tabFullNotation
     \set TabStaff.stringTunings = #guitar-drop-dg-tuning
    \clef moderntab
    \tempo  4 = 130

    \music
  }
>>

\score {
  \new Staff \with {midiInstrument = "acoustic guitar (nylon)"}
  \unfoldRepeats \articulate
  \music
  \midi {
    \tempo 4 = 130
  }
}


