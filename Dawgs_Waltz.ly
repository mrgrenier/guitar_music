% 
% 
%
\version "2.23.82"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Dawg's Waltz"
  subtitle = ""
  composer = "David Grisman"
}

\layout { 
   \context {
    \Score
    \omit BarNumber

  }
  indent = 0.0 
  \override Voice.StringNumber.stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 3/4
  \chordmode  {
    s2. d d:7 g c:7 d d:7 g:m c:7 d d:7 g c:7 d a:7 d d:7 \break
    g:7 fs:7 b:m d:7 g c:7 d a:7 \break
    d d:7 g c:7 d a:7 d a:7
  } 
}

music = {
  
  \tempo 4 = 85
  \clef moderntab
  \key d \major
  \time 3/4
  \stemDown
  \relative c {
    \override Score.RehearsalMark.stencil =
    #(make-stencil-boxer 0.15 0.3 ly:text-interface::print)

  \mark \default
    \override Beam.concaveness = #10000
    \set TabStaff.minimumFret = #0
    s4 r8  
    d fs a | d4. fs8 d a | c4. r8 c d | 
    b4. d8 b g | bf4. bf8 a g |
    fs4 g a | d e fs g2. | r4. d,8 fs a | 
    d4. fs8  d8 a8 |  c4. r8 c d | b4. d8 b8 g8 |
    bf4. bf8 a g | fs4 d4 b | a2 a8 b8 | d2. | 
    r4. d8 e g | \break
    \mark \default 

b4\3
    d fs | e2 d8 e | fs4\2 a
    b8\2 d | e4 d4 b8\2 d | b4\2 g4\3 e'8 d8 | bf2\2 d,8\3 e\2 |
    fs4\2 d\2 b\3  | a4. d,8 fs8 a8 |
    d4. fs8 d8 a8 | c2 \tuplet 3/2 { d8 cs c } | b2 \tuplet 3/2 { cs8 c b } |
    bf2 \tuplet 3/2 { c8 b bf} | a4 fs d8 b | a2 a8 b | d2. r2.

  }
}


<<
  \new ChordNames {
    \chord_music 
  }

  \new TabStaff {
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


