% 
% Radiohead lucky 
%
\version "2.18.2"
%{ \include "bend.ly" }%
\header {
  title = "Lucky"
  composer = "RadioHead"
}

%{ \layout { \override Voice.StringNumber #'stencil = ##f } }%

music = \relative c' {
  \key c \major
  \time 4/4
<<
  {
    \voiceOne
     e,4 < e' g b >4 a,8 e'8 < a c e >8 g16 <d g>16
     \time 2/4 
     g,4 <g' b g'> 8 < g b >16 < g b >
     \time 4/4 
     < fis b\3 > 4 < fis b d>8 b16\3 d16 fis16 e16 fis,8 <fis b\3>16 d'16 b16\3 <g b>16
     e,4 < e' g b >8 e16 < b' e >16 b,8 <b e>8 <b e g b>16 <b e g b>16 < b e g b>16 <d g>16
    < c e >4 < e g c > 8 < e g c >16 <e g c>16 g,4 <g' b g'>8 <g b g'>16 < g b g'>16
     \time 2/4 
     <fis b\3>4 <fis b d fis >8 < fis b\3 >16 < d g >16
     \time 4/4 
     e,4 < e' g b >8 e16 < b' e >16 b,8 <b e>8 <b e g b>16 <b e g b>16 < b e g b>16 <d g>16
     e,4 < e' g b >8 e16 < b' e >16 b,8 <b e>8 <b e g b>16 <b e g b>16 < b e g b>16 <d g>16
     e,4 < e' g b >8 < e g b >16 < e g b >16 a,4 < e' a c e >8 <d g>16 <d g> 16
     \time 2/4 
     g,4 <g' b g'> 8 < g b g'>16 < g b g'>16
     \time 4/4 
     < fis b\3 > 4 < fis b d>8 b16\3 d16 fis16 e16 fis,8  b16\3 d16 a,8
     e4 < e' g b >8 e16 < b' e >16 <e, g b >8 <e, b'>8 <e' g>16 g e < d g>
    < c e >4 < e g c e> 4 < g, b >4 <d' g b>8 <d g b>16 <d g b>16
     \time 2/4 
     <fis b\3>4 <fis b d fis >8 < fis b\3 >16 < fis b\3 >16
     \time 4/4 
     e,4 < e' g b >8 b16 < b' e >16 b,8 < b e >8 <b e g b>16 <b e g b> <b e g b>16 <b e g b>16
     e,4 < e' g b >8 < e g b>16 <e g b >16 <e, b'>8 <e b'>8 <e' g b>8 cis''\2
%{ \bendOn }%
      cis\2 ( dis\2 ) cis8\2 
%{ \bendOff }%
      b8\2 ~ b8\2  a4\3 g8\3 ~
      g8\3 e4.\4 g8\3 e8\4 g8\3 cis8\2
%{ \bendOn }%
      cis8\2 ( dis8\2 ) cis\2 b4\2 a\3 
%{ \bendOff }%
      g8\3 ~ g8\3 g8\3 d16\4 ( e16\4) g8\3 g'8\1 fis\1 e\1 cis\2
%{ \bendOn }%
      cis8\2 ( dis\2 ) cis8\2 
%{ \bendOff }%
      b8\2 ~ b8\2  a4\3 g8\3 ~
      g8\3 e4\4 d8\4 ~ d8\4 b4.\5
     \time 2/4 
     c,8 e ais ais
     \time 4/4
     <\deadNote e,\6 b'\5 dis a' b \deadNote e>1
     <e b'>4 <e' g>8 <e g>16 <b' e>16 ~ <b e>16 <g b>8. e,16 <b'' e>8 <g b>16
     <e, b'>4 <e' g>8 <e g>16 <b' e>16 ~ <b e>16 <g b>16 <e, b'>16  <e b'>16 <f b>16 <f b>16 <f b>16 <f b>16
     <e b'>4 <e' g>8 <e g>16 <b' e>16 ~ <b e>16 <g b>16 <e, b'>8  <e' g b>16 <e g b> <e g b> <e g b>
     <e, b'>4 <e' g>8. <b' e>16 ~ <b e>16 <g b>16 <e, b'>8 <e b'>16 <e'' b> <e,, b'> <g' b>
   }
>> 
}

\new StaffGroup <<
  \new Staff {
    \clef "treble"
    \music
  }
  \new TabStaff {
     \transpose c' c
     \music
  }
>>

\score {
<<
 \music
>>

  \midi {
  }
}
