%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Black Mountain Rag"
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
    c1 c c c
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

    g4. <g c>8 c,4 <g' c>8 <g c>8 |
    b,8( c4) <g' c>8 c,4 \deadNote <g' c>8 <g c> |
    b,8( c4) <g' c>8 c,4 \deadNote <g' c>8 <g c> |
    <c, e g c e>4. <g' c>8 <g c e>4 <d' e>4 |
    \mark \default
    e8\2 e a e g a g ef |
    e8\2 e a e g a g ef |
    e8\2 e a e g a g ef |
    e8\2 e c a g a c d \glissando |
    e8\2 e a e g a g ef |
    e8\2 e a e g4  g8 ef |
    e8\2 e a e g a g ef |
    e8\2 e c a g a c4 |
    \mark \default
    <d e>8 \glissando e4\2 g8 <e g>4 g8 <e g>8 \glissando |
    <d e>4 <c e> a <c e> |
    <d e>8 \glissando e8\2 e4 d8 c a g |
    c8 a g e c4 <e g c>4 |
    e'4\2 g b, a'8 g |
    ef e c g a4 c4 |
    <d e>8 \glissando e\2 e4 d8 c a g |
    c8 a g e c4 <e g c>4 |
    \mark \default
    \acciaccatura <d g c>8 e4 \acciaccatura <d g c>8 e4  \deadNote <g c>8 \deadNote <g c>8  ef8( d) |
    c4 <e g c>8 <e g c>8 d4 e4 |
    f4 <a c f>4 \deadNote c,8 \deadNote <a' c>8 <a c f>4
    g8( a) <a c f>8 <a c f>8 g4 f4
    d8( e) g c e, b' ef,( d) |
    c4 <e g c>8 <e g c>8 e4 ef |
    d4 <g b g'>8 \deadNote <g b> a,8( b) <g' b g'>8 \deadNote <g b> |
    bf,8( a) g4 d'4 a8 b8 |
    c4 <e g c>8 <e g c>8 d ef e4 |
    c'4 bf4 <e, bf' c>8 \deadNote <e bf' c>8 af( g)
    f4 <a c f>4 \deadNote f8 d' \deadNote <a c>8 \deadNote <a c>8
    ef'4 d c8 a f' f |
    d8 \glissando e\2 g e a g ef e\2 |
    c8 a g f e c d b |
    c4 <e g c> g8 ef e g |
    c4 <c, e g c>4 <g' c>4 <d' e>4 |
    \mark \default
    e8\2 e a e g a g ef |
    e8\2 e a e g a g ef |
    e8\2 e a e g a g ef |
    e8\2 e c a g a c d \glissando |
    e8\2 e a e g a g ef |
    e8\2 e a e g4  g8 ef |
    e8\2 e a e g a g ef |
    e8\2 e c a g a c4 |
    
  }
}


<<
  \new ChordNames {
    \chord_music
  }

  \new TabStaff  {
    \tabFullNotation
    \tempo \markup {
      \hspace #0.1
      \rhythm { 8[ 8] } = \rhythm { \tuplet 3/2 { 4 8 } }
    } 4 = 232 
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


