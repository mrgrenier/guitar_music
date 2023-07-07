% 
% 
%
\version "2.19.15"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Never Leave Harlan Alive"
  subtitle = ""
  composer = "Darrel Scott"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
   \chordmode  {
    s1 d1:m f c g
    d:m f bf c/a bf f c g bf a:7 d:m 
    \break
    f1 bf2 c2 f1 d:m ef bf f b2 c2 f1 d:m ef 
   } 
}

music = {
  \time 4/4
  \stemDown
   \relative c {
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
   r2^\markup { \bold "Intro solo:" }  a'8 c4. | d2 d8 e8 d8 a8 | c2 a8 g8 f4 | g2 g8 a8 g8 f8 |
   g8 f8 d4 a'8 c4. | d2 d8 e8 d8 a8 | c2 a8 c4. | <f, bf d>1 | s2 a8 c8 a4 | d2 d8 e8 d8 a8 
   | c2 a8 g8 f4 | g2 g8 a8 g8 f8 |g8 f8 d2 d8 e8 | f2 g8 a8 d4 | c4 a8 g8 f2 | d1 |
   \set TabStaff.minimumFret = #5
   \break
   f8 f8 a4 c4 
   <a c> 

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


