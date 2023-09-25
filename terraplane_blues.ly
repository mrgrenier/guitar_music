% 
% 
%
\version "2.23.82"
\include "english.ly"
\header {
  title = "Terraplane Blues"
  subtitle = "Tunning (D G D G B D)"
  arranger = "Bob Brozman"
  composer = "Robert Johnson"
}

\paper {
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}
\layout { indent = 0.0\cm }
\layout { \override Voice.StringNumber.stencil = ##f }

upper = \relative c' {
  \voiceOne
  \stemUp
  r8 <d'\3 f\2 g\1>16 <d f g>16 <d f g>8 <c e g>8 <d f g> d, <d g> <f bf> |
  r8
  <d'\3 f\2 g\1>8 ~ <d\3 f\2 g\1>8 r8 <c e g>8 r8 <d\3 f\2 g\1>8 <b d> |
  <d, g b>8 <b'' d> ~  \tuplet 3/2 { <b d> <b d> <b d> } <b d> <b d> c <g\3 b\2>16 <g\3 b\2>16 |
  f8\3 b,\2 bf\3 g'\1~ g\1 <d, g b> ~ <d g b> s8 |
  <bf e g c>4 <bf e g c>8 <c'\3 e\2> r8 <c\3 e\2 bf'\1> <c\3 e\2 a\1> <c\3 e\2 g\1> |
  <c e g> <e, g c> r8 <e g c> r8 <e g c> <e g c> <d g> ~ |
  <d g> <bf' b> \tuplet 3/2 { g e g} bf bf \tuplet 3/2 { g e g}
  s8 <d'\3 f\2 g\1> \tuplet 3/2 { <d f g> <d f g> <d f g> } <d f g> r8 \deadNote { <d f g> } s8 |
  s8 <a c d>8 r8 <a c d>8 ~ <a c d>8 <a c d>8 \deadNote { <a c d>8 } <c e g> |
  <c e g>1 |
  s8 <g d' d>8 ~ \tuplet  3/2 { <g d' d> <g d' d> <g d' d> } <g d' d>8 <g c d> bf <g b> |
  s8 <d' f g>8 ~ \tuplet  3/2 { <d f g> <d f g> <d f g> } <d f g>8 <d f g> <d f g>16 <d f g> <d f g> <d f g> | 
  <d f g>8 <d f g> <d f g>16 <d f g> <d f g> <d f g> <d f g>8 r8 r4 | 
  r8 <d\4 f\3 b\2>8 \tuplet 6/4 { b'16\2 f\3 d\4 b'\2 f\3 d\4 }  <d\4 f\3 b\2>8 <df\4 e\3 bf'\2>8 <d\4 f\3 b\2>4 |
  s8 <d\4 f\3 b\2>8~ <d\4 f\3 b\2>4 <df\4 e\3 bf'\2>4 ~ <df\4 e\3 bf'\2>8 <g, b d>8 |
  <g b d>8 <b' d> <b d> <b, d> \tuplet 3/2 { <b' d> <b d> <b d> } \tuplet 3/2 { <b d> <b d> <b d> } |
  
  
}

lower = \relative c {
  \voiceTwo
  g'4\5 s4 s4 s4 |
  <d'\4 g\3>8 s8 s4 s2 |
  s1 |
  s2 s4 g,4 |
  s1 |
  r4 bf4 bf4 r4 |
  g2. s4 |
  g2 s4 s8 bf8 |
  d4 s4 s2 |
  s1 |
  g,4 s4 s2 |
  <d' g>8 s8 s4 s2 |
  s1 |
  s1 |
  <g, d' g b d>8 s8 s4 s2 |
  s1 |
}

music = \relative c {
  \time 4/4
  {
    \tabFullNotation 
    <<
      \context TabVoice = "upper" \upper
      \context TabVoice = "lower" \lower
    >>
  }
}

\new TabStaff {
  \clef moderntab
  \set TabStaff.stringTunings = #guitar-open-g-tuning
  \transpose c c,
  \music
}

\score {
  \music
  \midi {
    \tempo 4 = 70
    \set Staff.midiInstrument = #"acoustic guitar (nylon)"
  }
}
