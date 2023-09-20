%
%
%
\version "2.22.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Salt Spring"
  subtitle = "Capo 2"
  composer = ""
}

\layout {
  \context {
    \Score
    \omit BarNumber

  }
  indent = 0.0
  \override Voice.StringNumber #'stencil = ##f
}

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
  \chordmode  {
    s1 g1 g1 g1 g1 a:m a:m a:m
    e:m a:m a:m a:m c c c g g g g g g a:m
    a:m a:m e:m a:m a:m a:m c c c 
    g g 
    c g c g c g d d 
    c g c g c g d d
    g
  }
}

music = {

  \tempo 2 = 80
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
    r4 e,8 g d e g d |
    \set TabStaff.minimumFret = #2
    b'4\3 d d d,8 b'\3 |
    d8( e\2) g d4 g8 d( e\2)(
    e\2) g <g d> <g d> \acciaccatura b,8\3 a4 g4 |
    a8 \glissando b\3 d e d b\3 \glissando a g |
    \set TabStaff.minimumFret = #0
    g( a) g( a4) <c e>8 a g |
    b8\3 c4\3 a <c e>8 g a \glissando |
    b8\3 <d e> \acciaccatura b8\3 a4 g8 e d g |
    d( e) <e g b> <b' e> d, e g4 |
    a8 \glissando b4\3 <d e>8 \acciaccatura b8\3 a g a4 |
    <c e>8 <c e> g a \glissando b\3 <d g> \acciaccatura b8\3 a4 |
    g8 e d g  \tuplet 3/2 { e( d) c } a b |
    c d ef e g gs a b |
    c g \acciaccatura d' e\2 g4 e8\2 g e\2 |
    g( a) g4 d8 e4\2 \glissando fs8\2 |
    \acciaccatura fs\2 e4\2 d8 b\3 d b\3 a b |
    g b d, e g a b\3 g |
    b\3 d4 g,8 d'4. <b e>8 |
    e8 b e4 e8 e4 g,8 |
    b\3 d4 g,8 d'4 d8 d8 | 
    e\2 e\2 d b\3 \glissando a c g4 | 
    \acciaccatura g8 <a c>4 <g c>8( a4) e'8  \acciaccatura <a, c>8 <b\3 d>4 ~ |
    <b\3 d>8 <b\3 d>8 <c\3 e\2>8 <b\3 d>8 \acciaccatura <b\3 d>8 <a c>4 g8 e |
    a4 g4 d8( e) d4 | 
    d8 e8 <g b>8 <b e>8 d,8 e8 g8 a8 \glissando |
    b\3 d \acciaccatura b\3 a g a4 g8 a8 \glissando |
    b\3 d \acciaccatura b\3 a4 <c e>8 <c e>8 g a \glissando | 
    b\3 <d g>8 \acciaccatura b\3 a4 g8 e d g |
    \tuplet 3/2 { e( d) c } a b c d ds e |
    g e g c d,( e) g e |
    g( a) g g d( e) g b |
    g e4 b'8 d, b \glissando d\5 b' |
    b b,( a) d g, d' d b  |
    \break
    \mark \default
    c4 e d fs |
    g d g8 a \glissando b\3 b |
    \acciaccatura b\3 a g e4 <g c e>8 <g c e>8 e \glissando fs |
    g d g a \glissando b\3 g' \acciaccatura b,\3 a g |
    d e g c b fs g d' |
    b g b d( e\2) g, d' b\3 \glissando |
    a g a g fs e d c |
    b g a g e fs g a |
    a b c e4 g8 a, a|
    a d fs g4 d8 g a \glissando |
    b\3 d \acciaccatura  <b\3 d>8 <a c>8 g e4 fs4 | 
    <d g>4 g8 a \glissando b\3 g' \acciaccatura b,\3 a g |
    d b c <g' c e> e\glissando fs4. |
    g8 d a' \glissando b4\3 d8 <c\3 e\2>( <b\3 d>)  
    \acciaccatura  <b\3 d>8 <a c>4 g8 a4 <c e>8 g fs ~ fs
    <g b> e4 d8 b a fs |
    fs( g ~ g2.)
  %%  \set TabStaff.minimumFret = #7


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

  \unfoldRepeats \articulate
  \music
  \midi {
    \tempo 4 = 80
  }
}


