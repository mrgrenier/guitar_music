%
%
%
\version "2.22.2"
\include "english.ly"
\header {
  title = "JAMNS"
  subtitle = ""
  arranger = ""
  composer = ""
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

strokeUp = \markup\combine\override #'(thickness . 1.3) \draw-line #'(0 . 2)\raise #2 \arrow-head #Y #UP ##f
strokeDown = \markup\combine\arrow-head #Y #DOWN ##f \override #'(thickness . 1.3) \draw-line #'(0 . 2)

RHu = \rightHandFinger \strokeUp
RHd = \rightHandFinger \strokeDown

too_many_places = {
 <>^"Too Many Places Verse"
 fs8 fs16 fs fs fs fs8 a8 a16 a a a a a 
 b8 b16 b b b b8 a8 e16 e e e e e 
 \break 
  <>^"Too Many Places Chorus"
 fs8 fs16 fs fs fs fs8 a8 a16 a a a a a 
 b8 b16 b b b b8 a8 e16 e e e e e 

}

chord_music = {
  \time 4/4
  \chordmode {  
    fs2:m  a |
    b:m e |
    \break
    b1:m fs:m
    b1:m fs2.:m e4
    
  }
}

music = {
  \numericTimeSignature
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \too_many_places 
}

<<
\new ChordNames {
	\chord_music
}
 \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
  \relative c {
    \improvisationOn
    \music
  }
  }

>>


