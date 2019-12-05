% 
% 
%
\version "2.19.82"
\include "english.ly"
\header {
  title = "Tell Me Something Good"
  subtitle = ""
  arranger = ""
  composer = "Steve Wonder"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
  \chordmode {
    a1:m |
  }
}

music = {
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
  
  a1
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


