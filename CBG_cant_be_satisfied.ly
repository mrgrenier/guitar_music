%{
  I can't be satisfied
%}

\version "2.17.16"

\header{
  title = "I can't be satisfied"
  subtitle = "4 String Cigar Box Guitar Tab Version"
  composer = "Muddy Waters"
}

"cbg-tuning" = \stringTuning <g d g' b'>
\layout { \override Voice.StringNumber #'stencil = ##f }

music = {
  \key c \major
  \time 4/4
<<
  {
     \voiceOne
     s4 d''4\2 ais'\2 g'\2 | \times 2/3 { d8\3 f\3 g'\2 }
  }
  \\
  {
     s4 d''8\2[ g8\4] ais'\2[ g\4] g'\2[ g8\4] s4 g4\4
  }
>>
}

<<
  \new Staff {
    \clef treble
    \music
  }
  \new TabStaff {
    \set Staff.stringTunings = #cbg-tuning
    \music
  }
>>
