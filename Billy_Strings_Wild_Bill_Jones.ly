%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Wild Bill Jones"
  subtitle = "Drop D Capo 3"
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

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
  \chordmode  {
    d1:m
   
  }
}

music = {
  \clef moderntab
  \key d \major
  \time 4/4
  \stemDown
  \relative c' {
    \override Score.RehearsalMark.stencil =
    #(make-stencil-boxer 0.15 0.3 ly:text-interface::print)
    \mark \default
    \override Beam.concaveness = #10000
    \set TabStaff.minimumFret = #0
    s2. s16 a,16( c8) |
    d4 d4 f4 g8 f8 |
    g16( a8.) af16( g) f g f d4.. |
    g16( a) c8 ~ c2 af16 g f \glissando fs | 
    d4 ~ d16 a16 c( a) d a c a c a f8 |
    d4 d'4 f4 g8 f |
    g16( a8.) af16( g) f g f d4.. |
    g16( a) c8 ~ c2 af16 g f \glissando fs | 
    d1 |
    \mark \default
    <d a' c e>4. a'16 c16 e8 a,16 c16 e16 a,16 c8 |
    c16( d8.) d8 c8 g16( a8.) af16 g f \glissando fs |
    d4 a16( c) d c f( d8.) d16( f) g8 | 
    <d g d'>16( a'2.) a,16( c8) |
    d4 d4 f4 g8 f8 |
    g16( a8.) af16( g) f g f d4. ~ d16 | 
    g16( a) c8 ~ c2 af16 g f \glissando fs |
    d4 ~ d16 a16 c( a) d a c a c a f8 |
    d1 
    
  }
}


<<
  \new ChordNames {
    \chord_music
  }

  \new TabStaff  {
    \tabFullNotation
    \set TabStaff.stringTunings = #guitar-drop-d-tuning
    \clef moderntab
        \tempo  4 = 120 

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


