% 
% 
%
\version "2.19.15"
\include "english.ly"
\header {
  title = "Long Black Veil"
  subtitle = ""
  arranger = ""
  composer = ""
}

\layout { \override Voice.StringNumber #'stencil = ##f }

music = {
  \time 4/4
  \stemDown
  \set TabStaff.minimumFret = #0

  \repeat volta 2 {
      d'2 d4.  d8 | 
      d2. d8 e8 |
      fs2 fs2 |
      fs2 d4 d4 |
      e2 e2 |
      e4 r4 fs4 e4 |
      d2 b8 d8 ~ d4 |
      b8 a8 ~ a4 ~ a4 a8 b8 |
      d2. d8 d8 |
      d2. e4 | 
      fs2 fs4 e4 |
      fs8 e8 d4 d4 d4 |
      e2 e4. e8 |
      e2 fs4 e4 |
      d2 b4 d4 |
      b8 a8 ~ a2.  ~|
      a2. a4
  }
  b2 d2 |
  a2. a8 a8 |
  b2 d2 |
  fs2. a,4 |
  b2 b4 d4 |
  a2. a8 a8 |
  b2 d2 |
  fs2 ~ fs8 e8 fs8 e8 |
  fs8 e8 d2. |
  a'2. a8 b8 |
  a4 fs2.\2 |
  r4 d4 ~ d4 b8 d8 |
  fs1 |
  b,2. d8 d8 |
  e2.  b8 d8 |
  d1 ~ |
  d1
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
    \context {
      \remove "Staff_performer"
    }
    \tempo 4 = 130
  }  
} 


