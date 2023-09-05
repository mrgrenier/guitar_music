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

\layout { indent = 0.0 
          \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

strokeUp = \markup\combine\override #'(thickness . 1.3) \draw-line #'(0 . 2)\raise #2 \arrow-head #Y #UP ##f
strokeDown = \markup\combine\arrow-head #Y #DOWN ##f \override #'(thickness . 1.3) \draw-line #'(0 . 2)

RHu = \rightHandFinger \strokeUp
RHd = \rightHandFinger \strokeDown

too_many_places = {
 <>^"Too Many Places Verse"
   % Metronome marks below the staff
  \override Score.MetronomeMark.direction = 0
  \tempo 4 = 100
 \repeat volta 3 { fs8 fs16 fs fs fs fs8 fs8 fs16 fs fs fs fs fs 
                   a8 a16 a a a a8 a8 a16 a a a a a
 b8 b16 b b b b8 a8 e16 e e e e e }
 \break 
  <>^"Too Many Places Chorus"
 b8 b16 b b b b8 b8 b16 b b b b b 
 fs8 fs16 fs fs fs fs8 fs8 fs16 fs fs fs fs fs
 b8 b16 b b b b8 b b16 b b b b b |
 fs8 fs16 fs fs fs fs8 fs fs16 fs16 e16 e e e
 \break
 <>^"Too Many Places Bridge"
 \repeat volta 2 { d8 d16 d d d d8 d8 d16 d16 d d d d | 
 b8 b16 b b b b8 b8 b16 b b b b b | 
 fs8 fs16 fs fs fs fs8 fs8 fs16 fs fs fs fs fs |} 
}



too_many_places_chords = {
  \time 4/4
  \chordmode {  
    fs1:m  a 
    b2:m e |
    \break
    b1:m fs:m
    b1:m fs2.:m e4
    \break
    d1 b:m fs:m
  }
}

hawk_is_a_mule = {
  \break
   \tempo 4 = 118
  <>^"Hawk Is A Mule"
  \repeat volta 2 { d4 d4 g4 g4 | d d  g g   | d d   g g   | g g   a d |}
  \repeat volta 2 { d4 d4 g4 g4 | d d  g g   | b b   g g   | g g   a d |}
}

hawk_is_a_mule_chords = {
  \chordmode {  
    d2  g |
   d g |
    d g |
    g a4 d4
        d2  g |
   d g |
    b:m g |
    g a4 d4
  }
}

music = {
  \numericTimeSignature
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \too_many_places
  \hawk_is_a_mule
}

<<
\new ChordNames {
  \too_many_places_chords
  \hawk_is_a_mule_chords
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


