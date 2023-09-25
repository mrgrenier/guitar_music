%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Brown's Ferry"
  subtitle = "Capo 2"
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
    g1 g1 c:7 g d:7 g c:7
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
    %   \mark \default
    \override Beam.concaveness = #10000
    \set TabStaff.minimumFret = #0
    g,8 <g' d' g> <d g d'>16  <d g d'>16  e( d) g8 <g b>16 <g b>16 <g b>8 <as b> \glissando b\3
     <b\3 d g> \staccato <b\3 d g> \staccato b16\3 b16\3 e\2 d b8\3 <b\3 d g>8 b\3 |
     <bf c>8 <a c>8 <g c>16 d( e8) <bf' c>8 <a c>8 <g c>16 d e d | 
     g,8 a16 bf \glissando b g' e( d) <d g>8 <g b>8 <d' b\3> <df bf> |
     <a c>8 <a c e>16 <a c e>16 ~ <a c e>16 <a c g'> d,8 <a' c fs>8 <a c fs>16 <a c fs>16 <a c fs>16 <a c fs>16 e' fs |
     g16 e16 d16( b16) e16 d16( b16) bf( \glissando a g) e( d) g ef e g |
     \tuplet 3/2 {[ef( d) c]} d ef( e) g a b c8 <c, e g c>8 ~ <c e g c>16 <c e g c>16 <c e g c>16 <c e g c>16 |
  }
}


<<
  \new ChordNames {
    \chord_music
  }

  \new TabStaff  {
    \tabFullNotation
    \clef moderntab
    \tempo  4 = 135

    \music
  }
>>

\score {
  \new Staff \with {midiInstrument = "acoustic guitar (nylon)"}
  \unfoldRepeats \articulate
  \music
  \midi {
    \tempo 4 = 135
  }
}


