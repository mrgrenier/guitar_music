
\version "2.18.2"
\include "bend.ly"
\header {
  title = "Triads"
  subtitle = "Fills and Solos"
  arranger = ""
  composer = ""
}

\include "english.ly"

\layout { \override Voice.StringNumber #'stencil = ##f }
\layout { indent = 0.0\cm }

global = {
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 116
  \stemDown
  \clef moderntab
}

% ------------
triad_ex_a = {
  <>^\markup {\bold "Ex. 1"}
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #5
  <d\5 a'\4 d\3 fs\2>4 d16 e \glissando fs a b a fs e <d a' d fs>4 |
}

triad_ex_b = {
  <>^\markup {\bold "Ex. 2"}
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #5
  <d\5 a'\4 d\3 fs\2>4 \deadNotesOn < a'\4 d\3 fs\2>8 a16\4 a16\4 \deadNotesOff
  \grace {d} <e fs>8 d8 <b d>16 a16 <fs a>16 e16 |
  d1 
}

triad_ex_c = {
  <>^\markup {\bold "Ex. 3"}
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #5
  <cs,\3 e\2 a,\4 a,\6>4  
  \glissando 
  <fs\2 b\1>8 \glissando <e\2 a\1>8
 \glissando 
  <cs\3 fs\2>8 \glissando <b\3 e\2>8
  <a\4 cs\3 e\2>4  

}

triad_shape_a = {
  <>^\markup {\bold "Shape .1"}
  \set TabStaff.minimumFret = #5
  d16\5 e\5 fs\5 a\4 b\4 d\3 e\3 fs\2 a\2 b\1 d8 ~ d4 |
  \break
}

triad_shape_b = {
  <>^\markup {\bold "Shape .2"}
  \set TabStaff.minimumFret = #4
  a,16\6 b\6 cs\5 e\5 fs\4 a\4 b\3 cs\3 e\2 fs\2 a\1 b ~ b4 |
  \break
}

music = {
  \global
  \set TabStaff.minimumFret = #0
  \triad_ex_a
  \triad_ex_b
  \triad_shape_a
  \triad_ex_c
  \triad_shape_b

}


\score {
  <<
    \new StaffGroup = "rhythm" <<
      \new TabStaff = "guitar"  \with {
        instrumentName = #"Guitar"
      }
      \relative c {
        \tabFullNotation

        \music
      }
    >>
  >>
  \layout {
    \override Beam.concaveness = #10000
    \context { \Staff \RemoveEmptyStaves }
    \context {
      \Score
      \override BarNumber.padding = #3
      \override RehearsalMark.padding = #2
      skipBars = ##t
    }
  }
  \midi {
    \tempo 4 = 116
  }
}


