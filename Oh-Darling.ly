% 
% 
%
\version "2.19.82"
\include "english.ly"
\header {
  title = "Oh Darling"
  subtitle = ""
  arranger = "Lunkheads"
  composer = ""
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 6/8
  \chordmode {
    fs4.:aug7 s4. |
    s4. b4. |
    s4. b4. |
    s4. fs4. |
    s4. fs4. |
    s4. gs4.:m |
    s4. gs4.:m |
    s4. e4. |
    s4. e4. |
    s4. c4.:m |
    s4. fs4. |
    s4. c4.:m |
    s4. fs4. |
    s4. b4. |
    s4. e4. |
    s4. b4. |
    s4. fs4.:7 |
    e4. s4. |
    e4. s4. |
    g4. s4. |
    g4. s4. |
    b4. s4. |
    b4. s4. |
    b4. s4. |
    b4. s4. |
    cs4. s4. |
    cs4. s4. |
    fs4. s4. |
    g4. s4. |
    fs4. s4. |
    fs4.:aug7 s4. |
  }
}

music = {
  \time 6/8
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
   <d' fs as d>4.( <d fs as d>4.) |
  r4. <ds fs b ds>8 r4 r4. <ds fs b ds>8 r4 | 
  r4. <fs as cs fs>8 r4 r4. <fs as cs fs>8 r4 |
  r4. <b, ds gs b>8 r4 r4. <b ds gs b>8 r4 | 
  r4. <e gs b e>8 r4 r4. <e gs b e>8 r4 | 
  r4. <cs e gs cs>8 r4 r4. <fs as cs fs>8 r4 |
  r4. <cs e gs cs>8 r4 r4. <fs as cs fs>8 r4 |
  r4. <ds fs b ds>8 r4 r4. <e gs b e>8 r4 | 
  r4. <ds fs b ds>8 r4 r4. <e as cs fs>8 r4 | 
  \break
  e8-.\4 e'-. b-.\2 gs-.\3 b-.\2 gs-.\3  e8-.\4 e'-. b-.\2 gs-.\3 b-.\2 gs-.\3 |
  g8-.\4 g'-. d-.\2 b-.\3 d-.\2 b-.\3  g8-.\4 g'-. d-.\2 b-.\3 d-.\2 b-.\3 |
  b,8-.\4 b'-. fs-.\2 ds-.\3 fs-.\2 ds-.\3  b8-.\4 b'-. fs-.\2 ds-.\3 fs-.\2 ds-.\3 |
  b8-.\4 b'-. fs-.\2 ds-.\3 fs-.\2 ds-.\3  b8-.\4 b'-. fs-.\2 ds-.\3 fs-.\2 ds-.\3 |
  cs8-.\4 cs'-. gs-.\2 f-.\3 gs-.\2 f-.\3  cs8-.\4 cs'-. gs-.\2 f-.\3 gs-.\2 f-.\3 |
  fs8-.\4 fs'-. cs-.\2 gs-.\3 cs-.\2 as-.\3  g8-.\4 g'-. d-.\2 b-.\3 d-.\2 b-.\3 |
  fs8\4 r4. r4 <d fs as d>4.( <d fs as d>4.) 
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
  \music
  \midi {
    \tempo 4 = 100
  }
} 


