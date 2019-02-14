% 
% 
%
\version "2.19.15"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Devil Went Down to Georgia"
  subtitle = "Mandolin"
  arranger = ""
  composer = "Charlie Daniels Band"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
   \chordmode  {
 
    
   } 
}

music = {
  \time 4/4
  \stemDown
   \relative c {
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #3
   d''8^\markup { \bold "Intro solo:" } c8 d8 e8\2 f4\2 f8\2 g8 |
   a4 a8 bf8 a8( g8) f8\2 e8\2 |
   c8\3 a8\3 c8\3 d8 e4\2 e8\2 f8 | 
   g8 a8g8 f8 d4 e8\2 a,8\3 |
   d8( e8\2 d8) a8\3 c8 d8 c8 a8\3 |
     \set TabStaff.minimumFret = #1
   bf8( c8 bf8) g8
   a8( bf8 a8) f8
   g8( a8\3 g8) d8\4 
   f8( g8 f8) e8\4 |
   d1
   a4 b cs d |
   e4 f g a |
   b c d e f g a cs |
   e2. d4 d2 cs2 c2 b2 as1 
   }
}


<<
\new ChordNames {
  \chord_music 
}

\new TabStaff {
   \set TabStaff.stringTunings = #mandolin-tuning
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

