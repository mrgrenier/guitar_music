% 
% 
%
\version "2.19.15"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Never Leave Harlan Alive"
  subtitle = "Capo 2"
  composer = "Darrel Scott"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
   \chordmode  {
    a1:m
    c1 
   } 
}

music = {
  \time 4/4
  \stemDown
   \relative c {
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
   r2^\markup { \bold "Intro solo:" }  d8 e8 g4 |  g8( a2) 
   a8( b8\3 a8) |  g8 \acciaccatura d e2 e8 d8 c8 d2
   d8 e8 d8 c8 d8 c8 a2 
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
	\tempo 4 = 130
  }
} 


