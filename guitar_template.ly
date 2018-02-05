% 
% 
%
\version "2.19.15"
\include "english.ly"
\header {
  title = ""
  subtitle = ""
  arranger = ""
  composer = ""
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
  \chordmode = {
  }
}

music = {
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0

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


