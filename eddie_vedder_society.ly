% 
% Eddie Vedder
%
\version "2.18.2"
\header {
  title = "Society"
  subtitle = "Strum D+D+DUDU"
  composer = "Eddie Vedder"
}
\include "predefined-guitar-fretboards.ly"

\layout { \override Voice.StringNumber #'stencil = ##f }

Verse_a = {
  a'4  \glissando b2.\3 ~ 
  b2\3 a4. ~ a8 
  fis1 ~ fis2 
  a4 \glissando b4\3
  a1
  r2 a4 fis4 
  d1 ~ d2 r2
  r4 d4 d4 d4
  e4 e8 e4. fis4
  fis2 r2
  r4 a4 a4 fis4
  a2 r4 d,8 \glissando e8 
  fis4 fis4 a4 b4\3 
  a2 r2
  r2. d,8 e8
  fis4. fis8 fis4 fis4
  a4 b4\3 a4 e4
  fis2 r2
  r2. r8 d8
  d4 d4 d4 d4
  e4. e8 e4 fis4
  fis2 r2
}

Verse_b = {
  r2. a8 b8
  d4 d4 d4 d4
  e4. e8 e4 fis4
  fis2 r2
  r2. d8 fis8
  a4 a4 a4 a4
  b4.\3 a8 a4 b4\3
  a4 fis8 fis4. r4
  r2 r4. e8
  fis4 fis4 fis4 fis4
  a4 a4. fis8 e4
  fis2 r2
  r2 r4 a,8 b8
  d4 d4 d4 d4
  e4. e8 e4 d4
  b2 r2
}

Chorus = {
  r4. e8 fis4 e4
  d2 r2
  r4 fis4 fis4 e4
  fis2 r2
  r4 fis4 fis4 fis4 
  fis4 e2 r4
  r2 e4 fis4
  d2 r2
}

Refrain = {
  \chordmode {
    b,,1:m
    b,,1:m
    b,,1:m
    b,,1:m
    b,,1:m
    b,,1:m
    b,,1:m
    b,,1:m
    d,,1
    a,,1
    d,,1
    d,,1
    d,,1
    g,,1
    a,,1
    a,,1
    g,,1
    a,,1
    b,,1:m
    b,,1:m
    g,,1
    a,,1
    b,,1:m
    b,,1:m
    b,,1:m
    b,,1:m
    g,,1
    g,,1
    d,,1
    d,,1
    a,,1
    a,,1
    b,,1:m
    b,,1:m
    b,,1:m
    b,,1:m
    d,,1
    a,,1
    d,,1
    d,,1
    d,,1
    g,,1
    a,,1
    a,,1
    g,,1
    a,,1
    b,,1:m
    b,,1:m
    g,,1
    a,,1
    b,,1:m
    b,,1:m
    b,,1:m
    b,,1:m
    g,,1
    g,,1
    d,,1
    d,,1
    a,,1
    a,,1
    b,,1:m
    b,,1:m
    g,,1
    g,,1
    d,,1
    d,,1
    a,,1
    a,,1
    b,,1:m
    b,,1:m
    b,,1:m
    b,,1:m
  }
}

<<
  \new ChordNames {
   \set chordChanges = ##t
   \Refrain
  }
  \new TabStaff {
    \relative c {
      \tabFullNotation {
       \set TabStaff.restrainOpenStrings = ##t
        \Verse_a
        s1 s1
        \Chorus
        s1 s1
        \Verse_b
        s1 s1
        \Chorus
        \Chorus
      }
    }
  }
>>
