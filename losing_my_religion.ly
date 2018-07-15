% 
% 
%
\version "2.19.15"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Losing My Religion"
  subtitle = "Mandolin"
  arranger = ""
  composer = "R.E.M."
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
   \chordmode  {
    s1 
    f1
    f1 
    a1:m 
    a1:m 
    f1
    f1
    a2..:m g8
    s1
    a2:m a8:sus2 a4:m a8:sus2
    
   } 
}

music = {
  \time 4/4
  \stemDown
   \relative c {
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
   r2^\markup { \bold "Intro solo:" } d''8\2 e\2 d\2 a | 
   <c, f a f'>4 r8 <c f a f'>8 <c f a f'>8 <c f a f'>8 r8 <c f a f'>8 |
   r8 <c f a f'>8 r8 <c f a f'>8  d'8\2 e\2 d\2 a |
   <a, e' c' e>4 r8 <a e' c' e>8 <a e' c' e>8 <a e' c' e>8 r8 <a e' c' e>8 |
   r8 <a e' c' e>8 r8 <a e' c' e>8  d'8\2 e\2 d\2 a |
   <c, f a f'>4 r8 <c f a f'>8 <c f a f'>8 <c f a f'>8 r8 <c f a f'>8 |
   r8 <c f a f'>8 r8 <c f a f'>8  d'8\2 e\2 d\2 a |
   <a, e' c' e>4  <a e' c' e>4 <a e' c' e>8 <a e' c' e>4 <g d' b' g'>8 ~ |
   <g d' b' g'>8 g d' e a g\3 e d |
   <a e' c' e>4  <a e' c' e>4 <a e' b' e>8 <a e' c' e>8 r8 <a e' b' e>8 ~ |
   <a e' b' e>8 <a e' b' e>8 <a e' c' e>8 <a e' c' e>8 <a e' b' e>8 <a e' c' e>8 r4 |
   <g e' b' e>4 <g e' b' e>4 <g e' a e'>8 <g e' b' e>8  r8 <g e' a e'>8 ~ |
   <g e' a e'>8 <g e' a e'>8 <g e' b' e>8 <g e' b' e>8 <g e' a e'>8 <g e' b' e>8 r4 |
   <a e' c' e>4  <a e' c' e>4 <a e' b' e>8 <a e' c' e>8 r8 <a e' b' e>8 ~ |
   <a e' b' e>8 <a e' b' e>8 <a e' c' e>8 <a e' c' e>8 <a e' b' e>8 <a e' c' e>8 r4 |
   <g e' b' e>4 <g e' b' e>4 <g e' a e'>8 <g e' b' e>8  r8 <g e' a e'>8 ~ |
   <g e' a e'>8 <g e' a e'>8 <g e' b' e>8 <g e' b' e>8 <g e' a e'>8 <g e' b' e>8 r4 |
   <a e' c' e>4  <a e' c' e>4 <a e' b' e>8 <a e' c' e>8 r8 <a e' b' e>8 ~ |
   <a e' b' e>8 <a e' b' e>8 <a e' c' e>8 <a e' c' e>8 <a e' b' e>8 <a e' c' e>8 r4 |
   <g e' b' e>4 <g e' b' e>4 <g e' a e'>8 <g e' b' e>8  r8 <g e' a e'>8 ~ |
   <g e' a e'>8 <g e' a e'>8 <g e' b' e>8 <g e' b' e>8 <g e' a e'>8 <g e' b' e>8 r4 |
   <a d a' f'>4. <a d a' f'>8     <a d a' f'>4. <a d a' f'>8 ~ |
   <a d a' f'>8 <a d a' f'>8 <a d a' f'>8 <a d a' f'>8  <a d a' f'>4 <a d a' f'>4 |
   <g d' b' g'>4. <g d' b' g'>8 <g d' b' g'>4. <g d' b' g'>8  ~ |
   <g d' b' g'>8 g d' e a g\3 e d |
   <a e' c' e>4  <a e' c' e>4 <a e' b' e>8 <a e' c' e>8 r8 <a e' b' e>8 ~ |
   <a e' b' e>8 <a e' b' e>8 <a e' c' e>8 <a e' c' e>8 <a e' b' e>8 <a e' c' e>8 r4 |
   <g e' b' e>4 <g e' b' e>4 <g e' a e'>8 <g e' b' e>8  r8 <g e' a e'>8 ~ |
   <g e' a e'>8 <g e' a e'>8 <g e' b' e>8 <g e' b' e>8 <g e' a e'>8 <g e' b' e>8 r4 |
   <a e' c' e>4  <a e' c' e>4 <a e' b' e>8 <a e' c' e>8 r8 <a e' b' e>8 ~ |
   <a e' b' e>8 <a e' b' e>8 <a e' c' e>8 <a e' c' e>8 <a e' b' e>8 <a e' c' e>8 r4 |
   <g e' b' e>4 <g e' b' e>4 <g e' a e'>8 <g e' b' e>8  r8 <g e' a e'>8 ~ |
   <g e' a e'>8 <g e' a e'>8 <g e' b' e>8 <g e' b' e>8 <g e' a e'>8 <g e' b' e>8 r4 |
   <a e' c' e>4  <a e' c' e>4 <a e' b' e>8 <a e' c' e>8 r8 <a e' b' e>8 ~ |
   <a e' b' e>8 <a e' b' e>8 <a e' c' e>8 <a e' c' e>8 <a e' b' e>8 <a e' c' e>8 r4 |
   <g e' b' e>4 <g e' b' e>4 <g e' a e'>8 <g e' b' e>8  r8 <g e' a e'>8 ~ |
   <g e' a e'>8 <g e' a e'>8 <g e' b' e>8 <g e' b' e>8 <g e' a e'>8 <g e' b' e>8 r4 |
   <a d a' f'>4. <a d a' f'>8     <a d a' f'>4. <a d a' f'>8 ~ |
   <a d a' f'>8 <a d a' f'>8 <a d a' f'>8 <a d a' f'>8  <a d a' f'>4 <a d a' f'>4 |
   <g d' b' g'>4. <g d' b' g'>8 <g d' b' g'>4. <g d' b' g'>8  ~ |
   <g d' b' g'>8 r4. d''8\2 e\2 d\2 a |
   <c, f a f'>4 r8 <c f a f'>8 <c f a f'>8 <c f a f'>8 r8 <c f a f'>8 |
   r8 <c f a f'>8 r8 <c f a f'>8  d'8\2 e\2 d\2 a |
   <a, e' c' e>4 r8 <a e' c' e>8 <a e' c' e>8 <a e' c' e>8 r8 <a e' c' e>8 |
   r8 <a e' c' e>8 r8 <a e' c' e>8  d'8\2 e\2 d\2 a |
   <c, f a f'>4 r8 <c f a f'>8 <c f a f'>8 <c f a f'>8 r8 <c f a f'>8 |
   r8 <c f a f'>8 r8 <c f a f'>8  d'8\2 e\2 d\2 a |
   <a, e' c' e>4  <a e' c' e>4 <a e' c' e>8 <a e' c' e>4 <g d' b' g'>8 ~ |
   <g d' b' g'>8 g d' e a g\3 e d |
 
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


