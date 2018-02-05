\version "2.19.15"
\include "bend.ly"
\header {
  title = "Sultans of Swing"
  subtitle = "Fills and Solos"
  arranger = "Trent Nelson"
  composer = ""
}

music = {
  \time 4/4
 
 \bendOn
 g''4\3^\markup { \bold "First Solo:" } ( a4\3 )  \tuplet 3/2 { r4  g4\3 g4\3 }
 g8\3 ( a8\3 ) ( g8\3 ) 
\bendOff
 f16\3( g16\3 f4\3) ~ f8\3 e16\3( f16\3 e2\3) ~ e8\3 cis\3 a\4 cis\3 e\2 a4\1 cis\1 
 \bendOn 
 e8 ( f8 ) ( e8)
 \tuplet 3/2 {d4\1 a\2 f\3} d4.\4 a'8\2 c4.\2 
 \bendOff
 bes16\2 ( c\2 bes4.\2)  gis8\2 a2\2 \deadNote e'8\3 b8\2 \deadNote e8\3 \deadNote e8\3 gis,\2( a4.\2) r2 
 %\bendOn 
 g8\3 ( a8\3 ) c8\2 g8\3 ( a8\3) f'8\1 c8\2 g16\3 ( a16\3 ) (g8\3 ) f4\3 f8\3( f4\3) r8. d'16\1 
 \tuplet 3/2 { f4\1 e\1 c\2 }
 %\bendOff
 g8\3 a4\3( g8\3) c8\2 c4\2 c4.\2 r4 |
 \bendOn
 c4\2 ( d4\2 ) c16\2 ( d16\2 )  ( c8\2 ) ais8\2
 %\bendOff
 c8\2 ( | d8\2 )

}

\new TabStaff {
  \relative c {
    \tabFullNotation
    \music
  }
}

\score {
  \music
  \midi {
  }
} 

