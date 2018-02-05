% 
% 
%
\version "2.19.15"
\include "english.ly"
\header {
  title = "Dust In The Wind"
  subtitle = ""
  arranger = ""
  composer = ""
}

\include "predefined-guitar-fretboards.ly"
\layout { indent = 0.0\cm }

\layout { \override Voice.StringNumber #'stencil = ##f }

upper = \relative c {
  \set Staff.midiInstrument = #"acoustic guitar (steel)"
  <c  c'>4^\markup { \bold "Introduction:"}  e8 g8 c,8  c'8 e,8 g8 | 
  <c, b'>4 e8 g8 c,8  b'8 e,8 g8 | 
  <c, d'>4 e8 g8 c,8  d'8 e,8 g8 | 
  <c, c'>4 e8 g8 c,8  c'8 e,8 g8 | 
  <a, b'>4 e'8 a8 a,8  b'8 e,8 a8 | 
  <a, d'>4 e'8 a8 a,8  d'8 e,8 a8 | 
  <a, c'>4 e'8 a8 a,8  c'8 e,8 a8 | 
  <a, b'>4 e'8 a8 a,8  b'8 e,8 a8 | 
  <c, d'>4 e8 g8 c,8  d'8 e,8 g8 | 
  <c, c'>4 e8 g8 c,8  c'8 e,8 g8 | 
  <c, b'>4 e8 g8 c,8  b'8 e,8 g8 | 
  <c, d'>4 e8 g8 c,8  d'8 e,8 g8 | 
  <a, c'>4 e'8 a8 a,8  c'8 e,8 a8 | 
  <a, b'>4 e'8 a8 a,8  b'8 e,8 a8 | 
  <a, d'>4 e'8 a8 a,8  d'8 e,8 a8 | 
  <a, c'>4 e'8 a8 <a, c'>8  r8 <b g' d'>4 | 
  
  \break
  
  \repeat volta 2 { 
  <c c'>4^\markup { \bold "Verse:"} e8 g8 c,8  c'8 e,8 g8 | 
  <b, d'>4 d8 g8 b,8  d'8 d,8 g8 | 
  <a, e''>4 e'8 a8 a,8  c'8 e,8 a8 | 
  <a, c'>4 e'8 a8 a,8  c'8 e,8 a8 | 
  <g, g''>4 g'8 g'8 g,,8  g''8 g,8 d'8 | 
  <d, g'>8 f'8 a,4 <d, e'>4 <a' d>4 |
  <a, d'>4 e'8 e'8 e,8 c'8 e,8 a8 | 
 }
 \alternative {
     {<a, c'>4 e'8 a8 <a, c'>8  r8 <b g' d'>4 |} 
     {\break <a c'>4^\markup { \bold "Chorus:"} e'8 a8 a,8  c'8 e,8 a8 |}
  }
 <fs, d''>4 d'8 a'8 fs,8 d''8 d,8 a'8 |
 <g, d''>4 d'8 c'8 g,4 <d' b'>4 |
  <a a'>4 e'8 a8 a,8  b'8 e,8 a8 | 
  <g, c'>4 e'8 a8 g,8 c'8 e,8 g8 | 
 <fs, d''>4 d'8 d'8 fs,,8 d''8 d,8 a'8 |
  <g, d''>4 d'8 c'8 g,4  <d' b'>4 | 
  <a a'>4 e'8 a8 a,8  b'8 e,8 a8 | 
  <a, b'>8( c'4.) <b, g' d'>2 
  
  \break
  
  \set TabStaff.minimumFret = #5
  
  <a e''>4^\markup { \bold "Solo:"} a'8\4 c8\3 a,8 b'8 a8\4 c8\3 |
  <a, e''>4 a'8\4 e' a,,8 e''8 a,4\4 |
  <a, d'\3>4 g'8\4 d'\3 a, b' g\4 d'\3 |
  <a, b'>4 g'8\4 d'\3 a, b' d, g |
  \set TabStaff.minimumFret = #3
  <a, f''\2>4 f'8\4 c'\3 a, b' f\4 c'\3 |
  <a, b'>4 f'8\4 c'\3 <a, g''>4 f'8\4 c'\3 |
  <a, a''>4 f'8\4 c'\3 a, b' f\4 c'\3 |
  <a, b'>4 f'8\4 c'\3 a, b' f\4 c'\3 |
  
  \set TabStaff.minimumFret = #0
  <a, e''>4 e'8 a8 a,8  c'8 e,8 a8 | 
  <a, b'>4 e'8 a8 a,8  b'8 e,8 g8 | 
  <g, d''>4 <d' c'>8 b' g, c' <d, d'>4 |
  <g, g'>8( a') <a, b'> c' <g, d''>4 d'8 g |
  <f, c''>4 <f' b>8 a f, b' <f c'>4 |
  <f, f'>8 g' a b <f c'>4 a8 b |
  <f, a'>4 c'8 f f, a' f b( |
  c b) a( g  a g) e( d) |
  <a e'>4 e'8 a8 a,8  c'8 e,8 a8 |
  <a, b'>4 e'8 a8 a,8  b'8 e,8 g8 | 
  <g, d''>4 <d' c'>8 b' g, c' <d, d'>4 |
  <g, g'>8( a') <a, b'> c' <g, d''>4 d'8 g |
  <f, c''>4 <f' b>8 a f, b' <f c'>4 |
  <f, f'>8 g' a b <f c'>4 a8 b |
  <f, a'>4 c'8 f f, a' f b( |
  c b) a b( c d) e f\2 |

  \set TabStaff.minimumFret = #3
  <c, g''>4 g'8\4 c c, e'\2 g,\4 c
  <c, e'\2>4 g'8\4 c c, e'\2 g,\4 c
  <c, g''>8( a'' g) f\2 g f\2( e\2 d\2) |
  e\2( d\2 e\2 d\2) c\3 d\2 c\3 b\3 |
  
   \set TabStaff.minimumFret = #0
  <a, e' a>4
  
}



music = {
  \time 4/4
  \stemDown
  \set TabStaff.minimumFret = #0

  << 
   \upper
  >> 
  

}

\new TabStaff {
  \relative c {
    \tabFullNotation
    \music
  }
}

\score {
  <<
  \music
  >>
  \midi {
    \tempo 4 = 187
  }
} 


