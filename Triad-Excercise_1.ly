%
%
%
\version "2.22.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Triads Exercise"
  subtitle = ""
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
    a1:sus4 a1:sus4 a1:7 a1:7  a1:sus2 a
    a1:sus4 a1:sus4 a1:7 a1:7  a1:sus2 a
  }
}

music = {

  \tempo 4 = 150
  \clef moderntab
  \key d \major
  \time 4/4
  \stemDown
  \relative c' {
    \override Score.RehearsalMark.stencil =
    #(make-stencil-boxer 0.15 0.3 ly:text-interface::print)

    \mark \default
    \override Beam.concaveness = #10000
    \set TabStaff.minimumFret = #12
    e'8 d8 a8 e'8 d8 a8 e'8 d8 |
    a8 e'8 d8 a8 e'8 fs8 e8 d8 |
    g,8 e'8 d8 g,8 e'8 d8 g,8 e'8 |
    d8 g,8 e'8 d8 e8 fs8 e8 d8 |
    \set TabStaff.minimumFret = #10
    d8 b8 a8\3 d8 b8 a8\3 d8 e8
    \set TabStaff.minimumFret = #6
    cs8 a8 e8\3 d8 cs8 a e4 |

    \set TabStaff.minimumFret = #12
    e''8 d8 a8 e'8 d8 a8 e'8 d8 |
    a8 e'8 d8 a8 e'8 fs8 e8 d8 |
    g,8 e'8 d8 g,8 e'8 d8 g,8 e'8 |
    d8 g,8 e'8 d8 e8 fs8 e8 d8 |
    \set TabStaff.minimumFret = #10
    d8 b8 a8\3 d8 b8 a8\3 d8 e8
    \set TabStaff.minimumFret = #6
    cs8 a8 e8\3 d8 cs8 a e4 |
    \set TabStaff.minimumFret = #10
    g8\5( b8\5) d fs( g) b d( fs | g2)
    \set TabStaff.minimumFret = #12
    g8 fs d a |
    \set TabStaff.minimumFret = #10
    g fs d\4 a\5 g\5 fs\5 d4\4
    <a' d e\3>1 \break

    \mark \default
    \set TabStaff.minimumFret = #7
    a'8\2 e' d e c e b e |
    a,8 e'8 g,8\2 e'8 fs,\2 d' c d |
    \set TabStaff.minimumFret = #5
    b\1 d\1 a\1 d\1 g,\2 d'\1 fs,\2 d'\1 |
    \set TabStaff.minimumFret = #3
    e,\2 c'\1 b\1 c\1 a\1 c\1 g\1 c\1 | 
    

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
    \tempo 4 = 150
  }
}


