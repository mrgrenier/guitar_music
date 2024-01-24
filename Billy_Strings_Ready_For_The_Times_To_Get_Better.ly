%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Ready For The Times To Get Better"
  subtitle = "Capo 3"
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
    s1 a:m a:m a:m a:m f:maj7 g a:m
    s1 a:m a:m a:m a:m f:maj7 g a:m 
    a:m c g/b g:m/bf a:m f:maj7 e:7
    a:m a:m c g/b g:m/bf a:m f:maj7
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
    r4 e,4 \downbow g \downbow gs \downbow | a \downbow <e' a c>4 \downbow b' \downbow c8 \downbow b  \upbow| 
    a,4 \downbow a' \downbow a, \downbow b' \downbow |
    c\downbow  b \downbow a \downbow e'\downbow  ~ | e
    <e, a c>4 \downbow <e a>8 \downbow <d g>8 \upbow <d g>4 \downbow |
    f8 \downbow g \upbow ( a) c \upbow a \downbow ( g) f \downbow \glissando g\4 |
    g4 \downbow <g b e>8 \downbow <b e>8 \upbow ds,16( d) c8 d c8 | 
    a4 \downbow <a' c e>8 \downbow <c e>8 \upbow a, \downbow <e' a> \upbow <e a c> \downbow <c' e> \upbow |
    a,4 \downbow e4 \downbow g \downbow gs \downbow
    a \downbow <e' a c>4 \downbow b' \downbow c8 \downbow b  \upbow| 
    a,4 \downbow a' \downbow a, \downbow b' \downbow |
    c4 \downbow b \downbow a \downbow e' \downbow |
    e, <e a b>4 \downbow <e a>8 \downbow <d g>8 \upbow <d g>4 \downbow |
    f8 \downbow g( a) c a( g) f \glissando g\4 |
    g4 \downbow <g b e>8 \downbow <b e>8 \upbow ds,16( d) c8 d c8 | 
    a4 \downbow <a' c e>8 \downbow <c e>8 \upbow e,, \downbow <e' a> \upbow <e a c> \downbow <c' e> \upbow |
    a,4 \downbow <a' c e>8 \downbow <c e>8 \upbow c \downbow <e, a c> \upbow <g b>4 \downbow  |
    <c, e g c e>8 \downbow g'' \upbow <g, c> \downbow e' \upbow <g, c> \downbow d'\upbow c \downbow d \upbow |
    b, \downbow d \upbow g \downbow d' \upbow b, \downbow d \upbow g \downbow d' \upbow | 
    bf, \downbow f' \upbow g \downbow d' \upbow bf, \downbow <g' d'>4. \upbow | 
    <a, e' a c e>4 \downbow a' \downbow <a, e'>8 \downbow <e' a c>8 \upbow < a c e>4 \downbow |
    <c, f a c e> \downbow <f a>8 \downbow <a c e> \upbow  c, \downbow  <f a c> \upbow <a c> \downbow <c e> \upbow |
    e,,4 \downbow <b' e gs b e>4 \downbow d'4 \downbow e4 \downbow |
    <c e> \downbow a \downbow a,8 \downbow e' \upbow a \downbow c \upbow |
 
    a,8 \downbow e'8 \upbow <a c e>8 \downbow <c e> \upbow e, \downbow <e a> \upbow <a c e>4 \downbow  |
    <c, e g c e>8 \downbow g'' \upbow <g, c> \downbow e' \upbow <g, c> \downbow d'\upbow c \downbow d \upbow |
    b, \downbow d \upbow g \downbow d' \upbow b, \downbow d \upbow g \downbow d' \upbow | 
    bf, \downbow f' \upbow g \downbow d' \upbow bf, \downbow <g' d'>8 \upbow  <f g>4 \downbow | 
    <a c e>4 \downbow fs, \downbow <d' a' c>8 \downbow <a' c> \upbow <a c>4 \downbow |
    <f a c e>4 \downbow  <a c>8 \downbow e'4 \upbow f8 \upbow ( e8) d8 \upbow |
   e8 \downbow e\2 \upbow \glissando d  c \upbow a \downbow ( g) c \downbow a \upbow |
   g8 \downbow d \upbow  e \downbow g \upbow  ds16 \downbow( d) c8 \upbow d8 \downbow c8 \upbow  |
   a4 \downbow <a' c e>8 \downbow <c e>8 \upbow e,, \downbow <e' a c> \upbow  <a c e>8 \downbow <c e>8 \upbow |
   a,4 \downbow <e' a c e>4 \downbow r2 |
   
 
 
    
\set TabStaff.minimumFret = #2
 

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


