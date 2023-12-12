%
%
%
\version "2.24.3"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Senor"
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
    e1:m 
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
    <e, b' e g b e>4 \downbow  <b'' e>8 \downbow <b e>8 \upbow
    e,,4 \downbow <b'' e>8 \downbow <b e>8 \upbow |
    e,4 \downbow <b' e>8 \downbow <b e>8 \upbow e, \downbow fs \upbow g \downbow a \upbow |
    b\3 \downbow d \upbow fs \downbow b,\3 \upbow d \downbow <b d fs> \upbow <b d> \downbow d \upbow |
    <d e>8 \downbow <d fs>8 \upbow <b d>4 \downbow <b d fs>4 \downbow <b d>8 \downbow <d e>8 \upbow |
    <a c>8 \downbow  e'8 \upbow  <a, c>8 \downbow  d \upbow  \glissando e\2 \downbow e\2 \upbow d \downbow c\3 \upbow |
    b\3 \downbow a \upbow g \downbow fs \upbow g \downbow g \upbow a \downbow as \upbow |
    b\3 \downbow as\upbow b\3 \downbow g \upbow a \downbow d, \upbow fs \downbow a \upbow
    g \downbow <b, e> \upbow e \downbow <b' e> \upbow e,, \downbow e' \upbow <b' e>4 \downbow |
    e,,4 \downbow <b'' e>8 \downbow <b e>8 \upbow e, \downbow fs \upbow g \downbow b\3  \upbow |
    <d, a' d e>4 \downbow <d a'>8 \downbow <d' e>8 \upbow <a d>8 \downbow <d, g d'>8 \upbow  <d a' d>8  \downbow <b' d>8 \upbow |
    <c, d( g c e>8 \downbow e8) <e g c>8 \downbow  <g c e>8 \upbow <c e> \downbow <g c> \upbow <e g c e>8 \downbow <g b>8 \upbow |
    r8 d \upbow c \downbow e \upbow d \downbow c \upbow b \downbow as \upbow | a4 \downbow <e' a b>8 \downbow <a b e>8 \upbow <e a b e>8 \downbow <a b e>8 \upbow <e a b e>4 \downbow |
    a,8 \downbow b \upbow g \downbow b \upbow a \downbow g \upbow fs \downbow f \upbow |
    e4 \downbow  <e' g b>8 \downbow <g b e>8 \upbow <e g b>8 \downbow <e, b' e g b e>4. \upbow |
    <e b' e g b e>4 <e' g b e>8 <e g b e>4 <e g b e>8 <e g b e>4 |
    <e, b' e g b e>1
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


