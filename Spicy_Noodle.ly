%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Spicy Drive Noodles"
  subtitle = "Drop D"
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
    d1 
    d1 d d d2 g2 
    d1 d d d2 d2 
    d1 d d d2 g2
    d1 d d d2 d2
    d1 d d d d
    d1 d d d d a:m7 a:m7
    g d d d2 c:sus2/d
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

    <d,,\6 a'\5 d\4 a'\3 d\2>1 |
    <d c'>8( d'\5) d d\5 f( d) c( d\5) |
    d8 d\5 g\4( d) f( d) d\5 d |
    c8( d\5) d d\5 f( d) c( d\5) |
    d8 a fs4 <g d' g d'>2 |
    <d c'>8( d'\5) d d\5 f( d) c( d\5) |
    d8 d\5 a'\4( d,) f( d) d\5 d |
    c8( d\5) d d\5 f( d) c( d\5) |
    d8 a f d <a'\5 d\4 a'\3 d\2>2 |
    <d, c'>8( d'\5) d d\5 f( d) c( d\5) |
    d8 d\5 g\4( d) f( d) d\5 d |
    c8( d\5) d d\5 f( d) c( d\5) |
    d8 a fs4 <g d' g d'>2 |
    <d c'>8( d'\5) d d\5 f( d) c( d\5) |
    d8 d\5 a'\4( g) f( d) d\5 d |
    c8( d\5) d d\5 f( d) c( d\5) |
    d8 a f d <a'\5 d\4 a'\3 d\2>2 |
    <d a' d>4. e'4. <c, g' d'>4 ~ | <c g' d'>4
    a8( c) d a c d\5 |
    d8 e f g a f \acciaccatura gs g f |
    g f d c d a c d\5 
    d4. \harmonicsOn <a'\4 d\3>4. \harmonicsOff c,4 ~ | 
    c4 a8( c) d a c d\5 |
    d e f e d c d b | 
    a f e ef d2 |
    d'8 a 'd a'4 g8 fs d |
    a g fs e d c b bf | 
    a4. <e' g c e>4. <e g c e>4 ~ |
    <e g c e>4 a,8 b c b a fs |
    g4. <d' g d'>4. <g, d' g d'>4 ~ <g d' g d'>4
    a8 b c b a f
    d4. <d' a' d>4. <a d a' d>4 ~ <a d a' d>8 <d a' d e>4. <d, c' g' d'>2 
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
        \tempo  4 = 260 

    \music
  }
>>

\score {
  \new Staff \with {midiInstrument = "acoustic guitar (nylon)"}
  \unfoldRepeats \articulate
  \music
  \midi {
    \tempo 4 = 260
  }
}


