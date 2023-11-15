%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Watch It Fall"
  subtitle = "Capo 4"
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
    s1 c c c a:m a:m g g f c c f f c a:m g f c c
    s1 c c c a:m a:m g g f c c f f c a:m g f c c
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
    r4 d8 \downbow ef \upbow e \downbow g \upbow a \downbow b \upbow |
    c4 \downbow <c, e g c>4 \downbow c'8 \downbow a \upbow c \downbow e \upbow |
    c4 \downbow g2 \downbow g8 \downbow ( a) ~ a4 g4 \downbow \tuplet 3/2 {d8 \downbow ( e8 d8)} c4 \downbow |
    d8 \downbow ( e) a \downbow c \upbow a \downbow e \upbow a \downbow c \upbow |
    e,4 \downbow <e a c>4 \downbow e4 \downbow g4 \downbow |
    e8 \downbow  \glissando g\4 d' \downbow  g,\4 \upbow g \downbow  d'\upbow  g,\4 \downbow  d'\upbow |
    g,8\4 \downbow \glissando e d2 \downbow g8 \downbow e \upbow |
    f4 \downbow e4 \downbow \tuplet 3/2 {d8 \downbow ( e8 d8)} c4 \downbow |
    d8 \downbow ( e8) g \downbow c \upbow g \downbow e \upbow g \downbow c \upbow | 
    e,4 \downbow <e g c>4 \downbow e8 \downbow f \upbow g4 \downbow |
    g8 \downbow ( a8) ~ a4 a8 \downbow g \upbow a \downbow b \upbow | 
    c4 \downbow b4 \downbow  a4 \downbow g4 \downbow | 
    e16 \downbow ( d) c8 \upbow ~ c4 c4 \downbow d4 \downbow | 
    <d g>8 \downbow ( e8) ~ e8 c'8 \upbow e,8 \downbow <e a c> \upbow <e a c> \downbow <e a c> \upbow |
    e8 \downbow \glissando g\4 d'8 \downbow g,\4 \upbow g \downbow d' \upbow g, \downbow e \upbow | 
    f8 \downbow a \upbow g \downbow f \upbow e \downbow c \upbow d \downbow b \upbow | 
    c4 \downbow <c e g c>4 \downbow g8 \downbow e' \upbow g \downbow c \upbow | 
    c,1 |
    \break
    \mark \default
    r4 d8 \downbow ef \upbow e \downbow g \upbow a \downbow b \upbow |
    c4 \downbow <c, e g c>4 \downbow c'8 \downbow a \upbow c \downbow e \upbow |
    c4 \downbow g2 \downbow g8 \downbow ( a) ~ a4 g4 \downbow \tuplet 3/2 {d8 \downbow ( e8 d8)} c4 \downbow |
    d8 \downbow ( e) a \downbow c \upbow e, \downbow a \upbow c \downbow e \upbow |
    e,4 \downbow <e a c e>4 \downbow ~ <e a c e>8 <e a c e>8 \upbow <e a c e>4 \downbow |
    a8 \downbow \glissando b\3 g'4 \downbow b,8\3 \downbow \glissando a g\downbow e \upbow | 
    d \downbow b \upbow a \downbow fs \upbow g \downbow b \upbow a \downbow g \upbow |
    f8 \downbow e \upbow f \downbow e \upbow f \downbow g \upbow a \downbow b \upbow |
    c8 \downbow b \upbow c \downbow d \upbow e \downbow g \upbow a \downbow b \upbow |
    c8 \downbow bf \upbow c \downbow e \upbow \tuplet 3/2 { c( \downbow d c)} bf4 \downbow |
    g8 \downbow ( a) e' \downbow a, \upbow c \downbow f \upbow <a, c f> \downbow <a c f> \upbow |
    \tuplet 3/2 { g \downbow ( a) b \upbow} c8 \downbow a \upbow <g b>4 \downbow e4 \downbow |
    d4 \downbow e4 \downbow ef16 \downbow ( d16) ~ d8 c4 \downbow | 
    a4 \downbow <a e' a c e>4 \downbow ~ <a e' a c e>8 <a e' a c e>8 \upbow <a e' a c e>8 \downbow a' \upbow \glissando |
    b8\3 g'8 \upbow b,8\3 \downbow \glissando a g4 \downbow ~ g8 e8 \upbow |
    f8 \downbow a \upbow g \downbow f \upbow e \downbow c \upbow d \downbow b \upbow |
    c8 \downbow e,4 \upbow e8 \upbow g \downbow fs \upbow f \downbow e \upbow | c'1 \downbow 
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


