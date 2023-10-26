%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "G Run"
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

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
  \chordmode  {
    g1
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
 %S   \mark \default
    \override Beam.concaveness = #10000
    \set TabStaff.minimumFret = #0
    s1
    \acciaccatura f8 g2 ~ g8 f d16( cs c) bf |
    c8 bf\3( \glissando b\3) g f( d) g d( |
    f) g d bf \glissando b d \tuplet 3/2 { bf( a) g }
    a8 bf( b) d e( d) g bf( |
    b\3) d b\3( 
    \set TabStaff.minimumFret = #6
    d) f d f( g) | 
    bf b g bf
    \set TabStaff.minimumFret = #10
    b d e4 |
    e8 d b d bf b d b( \glissando |
    \set TabStaff.minimumFret = #6
a) g e\2 g( \glissando f) cs 
    \set TabStaff.minimumFret = #5
    e\2 f( 
    | e\2) d e\2 d c g
    \set TabStaff.minimumFret = #0
    bf( \glissando b\3) |
    g f d bf( \glissando b) d f( \glissando fs) g2 
    <g, d' g d' g>2
    
    
    
    
  }
}


<<
  \new ChordNames {
    \chord_music
  }

  \new TabStaff  {
    \tabFullNotation
    \clef moderntab
    \tempo  4 = 230

    \music
  }
>>

\score {
  \new Staff \with {midiInstrument = "acoustic guitar (nylon)"}
  \unfoldRepeats \articulate
  \music
  \midi {
    \tempo 4 = 230
  }
}


