% 
% 
%
\version "2.18.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "The Way It Goes"
  subtitle = "E Dorian Blues"
  arranger = "Dave Rawlings Part"
  composer = "Gillian Welch"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
   \chordmode  {
    e1:m
    e1:m 
    e1:m 
    b:7
    b:7
    e1:m
    e1:m
    e1:m
    e1:m
    e1:m
    e1:m
    e1:m
    b:7
    b:7
    e1:m
    e1:m
    e1:m
    e1:m
    e1:m
    e1:m
    b:7
    b:7
    e1:m
    e1:m
      \repeat  volta 2 {
    g1 g1 e1:m e1:m
      }
        \alternative {
      { c1 c1 g1 d1 }
      { c1 b:7}
    }
   } 
}

music = {
  \time 4/4
  \stemDown
   \relative c {
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
   r2^\markup { \bold "Intro solo:" } e8 fs4 g8 ~ | 
   g4  d'4 b8\3 b\2 a\3 b\2 |
   g2\3 fs4\3 d8 fs8\3 ~ |
   fs2.\3 fs4\3 \glissando  |
   ds2 ds8 e  fs g | 
   e2  fs8 b d, b' |
   e,2 a,8 as b4 |
   e,1 |
   \break
   e'4^\markup { \bold "Verse/fill 1:" } <g b>8 <g b>8 b, b' d, b' |
   e,4 <g b>8 <g b>8 b, b' d, b' |
   e,4 <g b>8 <g b>8 fs4  g\4 |
   e4 <g b>8 <g b>8 d4 <g b>8 <g b>8 |
   b,4 <ds a' b>8 <ds a' b>8 fs,4  <ds' a' b>8 <ds a' b>8  |
   b4 <ds a' b>8 <ds a' b>8 fs4 g\4 |
   e <g b> fs8 g( a) b |
   a( g)  fs g fs g fs( d) |  
   \break
   e4^\markup { \bold "Verse/fill 2:" } <g b>8 <g b>8 b, b' d, b' |
   e,4 <g b>8 <g b>8 b, b' d, b' |
   e,4 <g b>8 <g b>8 fs4  g\4 |
   e4 <g b>8 <g b>8 d4 <g b>8 <g b>8 |
   b,4 <ds a' b>8 <ds a' b>8 fs,4  <ds' a' b>8 <ds a' b>8  |
   b4 <ds a' b>8 <ds a' b>8 fs4 g\4 |
   
   e <g b> d'8( b) g4  |
   e2. e'8 b |  
   \break
   \repeat  volta 2 {
   g,4^\markup { \bold "Chorus:" } <d' g b>8 <d g b>  b4 d |
   g,4 <d' g b>8 <d g b>  b4 d |
   e4 <g b>8 <g b> b,4 d |  
   e4 <g b>8 <g b> b,4 d |  
   }
    \alternative {
      { c4 <e g c>8 <e g c>8 g,4 <e' g c>8 <e g c> |
        c4 <e g c>8 <e g c>8 g,4 <e' g c>8 <e g c> |
        g,4 <d' g b>8 <d g b>8 b4 c |
       d4 <a' d>8 <a d> fs,2 | }
      { c'4 <e g c>8 <e g d'>4. <e g c>4 |
         b4 <ds a' b>8 <ds a' d>4. <ds a' b>4 |   
     }
    }
   \break
   <e, b' e>4^\markup { \bold "Solo:" } <b'' e>4 b8 d e8 b8 e8 b  g' b, b fs'  b, b e4  | 
    d8 b as a g e d8 | e1 
   \break
   e,8  b' c cs d e fs g( a g) fs g as( b\3) e4 | 
   
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


