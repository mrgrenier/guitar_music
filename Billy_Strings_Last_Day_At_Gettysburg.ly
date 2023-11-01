%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Last Day At Gettysburg"
  subtitle = "Capo 5"
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
    s1 a:m a:m a:m a:m g g a:m a:m
    a:m a:m a:m a:m g g a:m a:m c c
    g g f:maj7 g2 c2 c1 s1 
    c c g g f g a:m a:m a:m
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
    %   \mark \default
    \override Beam.concaveness = #10000
    \set TabStaff.minimumFret = #0
    r4 e,8 g a c d ef |
    e4  <e a c e>8 \downbow <e a c e>8 \upbow e, <e' a c e>8 \upbow <e a c e>8 \downbow <e a c e>8 \upbow |
    e4 <e a c e>8 \downbow <e a c e>8 \upbow d( e) <e a c e>8 \downbow <e a c e>8 \upbow |
    f4 e4 r8 r8 <e a c e>8 <e a c e>8 |
    a,4 <e' a c e>8 <e a c e>8 e d c4 |
    d4 <d g b g'>8 <d g b g'>8  a( b) <d g b g'>8 <d g b g'>8 |
    b8 a8 g4 e4 g4 |
    a4 <e' a c e>8 <e a c e>8 e,8 <e' a c e>8 <e a c e>8 <e a c e>8 |
    a,4 <e' a c e>8 <e a c e>8 a, c d ef |
    e4 <e a c e>8 <e a c e>8 e, <e' a c e>8 <e a c e>8 <e a c e>8 |
    e4 <e a c e>8 <e a c e>8 d( e) <e a c e>8 <e a c e>8 |
    f4 e4 r8 r8 <e a c e>8 <e a c e>8 |
    a,4 <e' a c e>8 <e a c e>8 e d c4 |
    d4 <d g b g'>8 <d g b g'>8  a( b) <d g b g'>8 <d g b g'>8 |
    b8 a8 g4 e4 g4 |
    a4 <e' a c e>8 \downbow <e a c e>8 \upbow e,8 <e' a c e>8 \upbow <e a c e>8 \downbow <e a c e>8 \upbow |
    <e a c>4 a, bf b |
    c <g' c g'>8 <e g c> <e g c> e' <e, g c> <e g c> |
    d'( c) <e, g c> e' <e, g c> c' <e, g c> <e g c> |
    \set TabStaff.minimumFret = #2
    a8 \glissando b\3 <b d g> \downbow <b d g> \upbow b\3 <b d g> \upbow b\3 \downbow \glissando a |
    g4 <d g b g'>8 \downbow <d g b g'>8 \upbow r8 d \upbow e \downbow g \upbow | 
    \set TabStaff.minimumFret = #0
    f4 <f a c e>8 \downbow <f a c e>8 \upbow g( a) <f a c e>8 \downbow <f a c e>8 \upbow | 
    g4 <d g b>8 \downbow <d g b> \upbow e( d) c4 |
    d8( e) <c e g c e>8 \downbow <c e g c e>8 \upbow d8( e) <c e g c e>8 \downbow <c e g c e>8 \upbow |
    c8 e, f fs g e bf' b |
    c4 <g' c g'>8 <e g c> <e g c> e' <e, g c> <e g c> |
    d'( c) <e, g c> e' <e, g c> c' <e, g c> <e g c> |
    \set TabStaff.minimumFret = #2
    a8 \glissando b\3 <b d g> \downbow <b d g> \upbow b\3 <b d g> \upbow b\3 \downbow \glissando a |
    g4 <d g b g'>4 \downbow  r8 <d g b g'>8 \upbow <d g b g'>8 \downbow <d g b g'>8 \upbow
    \set TabStaff.minimumFret = #0
    f g( a) c a( g) f \glissando g\4 |
    g4\4 <d g b>4 \downbow ef16( d) r8 c4 |
    a4 <e' a c e>8 \downbow <e a c e>8 \upbow e,8 <e' a c e>8 \upbow <e a c e>8 \downbow <e a c e>8 \upbow |
    e4 <e a c e>8 \downbow <e a c e>8 \upbow e, g b g |
    a4 <e' a c e>8 \downbow <e a c e>8 \upbow e,8 <e' a c e>8 \upbow <e a c e>8 \downbow <e a c e>8 \upbow |


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
    \tempo 4 = 160
  }
}


