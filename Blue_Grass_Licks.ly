%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Blue Grass Licks"
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

  }
}

music = {
  \clef moderntab
  \key g \major
  \time 4/4
  \stemDown
  \relative c' {
    \override Score.RehearsalMark.stencil =
    #(make-stencil-boxer 0.15 0.3 ly:text-interface::print)
    \override Beam.concaveness = #10000
    \set TabStaff.minimumFret = #0

    \mark \default
    c8 cs d f \tuplet 3/2 { cs c as}  c8 g8 | as c g as \glissando b\3 g f( d) | g1 |
    \break
    \mark \default
    \set TabStaff.minimumFret = #3
    d'8( f\2) g d \acciaccatura as' b g f d g f d cs \glissando c g as b\3 | g1 |
    \break
    \mark \default
    \set TabStaff.minimumFret = #0
    a,8 c cs d f cs d f fs g as fs g as b\3 d8 ~ d8 cs8 c8 as \glissando b\3 g f( d) | g1 |
    \break
    \mark \default
    \set TabStaff.minimumFret = #0
    g,8 a as \glissando b8  \tuplet 3/2 { d e( d) }  g4
    g,8 a as \glissando b \tuplet 3/2 { d f \glissando fs}  g4 |
    \break
    \mark \default
    \set TabStaff.minimumFret = #3
    b8 e\2 f e a f e as a f gs f g f d cs \glissando c g as b\3 g f( d) c |
    \set TabStaff.minimumFret = #0
    d as( a) d g,2
    \break
    \mark \default
    \set TabStaff.minimumFret = #7
    \acciaccatura cs''8 \glissando d8 cs( c) as c as( g) f g
    \set TabStaff.minimumFret = #5
    f \acciaccatura cs d f \tuplet 3/2 { cs( c) as }  c as( g\4) f g\4
    f g\4
    \set TabStaff.minimumFret = #3
    f \acciaccatura cs d\5 f \tuplet 3/2 {cs c as} c as g2


  }
}


<<
  \new ChordNames {
    \chord_music
  }

  \new TabStaff  {
    \tabFullNotation
    \clef moderntab
    \tempo  4 = 150

    \music
  }
>>

\score {
  \new Staff \with {midiInstrument = "acoustic guitar (nylon)"}
  \unfoldRepeats \articulate
  \music
  \midi {
    \tempo 4 = 150
  }
}


