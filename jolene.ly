% 
% 
%
\version "2.18.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Jolene"
  subtitle = "Capo. fret 4"
  arranger = ""
  composer = "Dolly Parton"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
   \chordmode  {
    a1:m |
    a1:m | 
    a1:m | 
    a1:m |
    
    \repeat volta 2 {
       a2:m7 c2 |
       \time 2/4
       g2 |
       \time 4/4
       a1:m |  
       g1 |
       a1:m |
       a1:m 
    }

    \repeat volta 4 {
       a2:m7 c2 |
       g2/b a2:m | 
       g1 |
       a1:m |
       a1:m 
    }
   } 
}

music = {
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
      <a g'>16(  a') e b' a,8 <d b'>16(  <e c'>) a, b'  d, g <a, c'>( b' ) d, g | 
      <a, g'>16(  a') e b' a,8 <d b'>16(  <e c'>) a, b'  d, g <a, c'>( b' ) d, g | 
      <a, g'>16(  a') e b' a,8 <d b'>16(  <e c'>) a, b'  d, g <a, c'>( b' ) d, g | 
      <a, g'>16(  a') e b' a,8 <d b'>16(  <e c'>) a, b'  d, g <a, c'>( b' ) d, g | 
      \break
      
  \repeat volta 2 {
      
      a,8^\markup { \bold "Chorus" } <e' c'>8 <a, c'> e'16 g c,8 <e c'>8 c16 g' e c' |
      \time 2/4
      g,8 <g' b> g,16 g' d b' |
      \time 4/4
      <a, g'>16(  a') e b' a,8 <d b'>16(  <e c'>) a, b'  d, g <a, c'>( b' ) d, g | 
      g,8 <g' b> g,16 g' d b' g,8 <g' b> g,16 g' d b' |      
      <a, g'>16(  a') e b' a,8 <d b'>16(  <e c'>) a, b'  d, g <a, c'>( b' ) d, g | 
      <a, g'>16(  a') e b' a,8 <d b'>16(  <e c'>) a, b'  d, g <a, c'>( b' ) d, g | 
  }

   \break
  \repeat volta 4 {
      
      a,8^\markup { \bold "Verses" } <e' c'>8 <a, c'> e'16 g c,8 <e c'>8 c16 g' e b' |

     b,8 <d b'>8 b16 g' d b' a,8 <e' c'> a,16 a' e b' |
     g,8 <g' b> g,16 g' d b' g,8 <g' b> g,16 g' d b' |      
     <a, g'>16(  a') e b' a,8 <d b'>16(  <e c'>) a, b'  d, g <a, c'>( b' ) d, g | 
     <a, g'>16(  a') e b' a,8 <d b'>16(  <e c'>) a, b'  d, g <a, c'>( b' ) d, g | 
  
  }

}

<<
\new ChordNames {
  \chord_music 
}

\new TabStaff {
  \relative c {
    \tabFullNotation
    \music
  }
}
>>

\score {
  \unfoldRepeats \articulate
  \music
  \midi {
      \tempo 4 = 100
  }
} 


