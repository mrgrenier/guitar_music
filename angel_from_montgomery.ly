\version "2.19.15"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Angel From Montgomery"
  subtitle = "Tuning (D A D F# A D)"
  arranger = ""
  composer = ""
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

music = {
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
     <d, a' d fs>1^\markup { \bold "Intro" }
     \grace<f c' f a\3>8\glissando<g d'\5 g\4 b\3>1
     <d a' d fs>1
     \grace<f c' f a\3>8\glissando<g d'\5 g\4 b\3>1
     
  \repeat  volta 2 {
     r8 d8 a' \grace e' \glissando fs\4 fs4\4 e\4 d
  }

}


<<

\new TabStaff {
    \set TabStaff.stringTunings = #guitar-open-d-tuning
  \relative c {
    \tabFullNotation
    \music
  }
}

>>

\score {
  \unfoldRepeats \articulate
  \music
  \midi {
      \tempo 4 = 100
  }
} 



\score {
<<
  \set TabStaff.stringTunings = #guitar-open-d-tuning
 \music
>>
  \midi {
    \tempo 4 = 70
  }
}
