% 
% 
%
\version "2.18.2"
\header {
  title = "Going To California"
  subtitle = "Double Drop D tuning (D A D G B D)"
  arranger = ""
  composer = ""
}

\makeDefaultStringTuning #'guitar-double-drop-d-tuning \stringTuning <d, a, d g b d'>

\layout { \override Voice.StringNumber #'stencil = ##f }

music = {
  \time 4/4
  \stemDown
  \set TabStaff.minimumFret = #0

 
  d,8^\markup { \bold "Introduction:" }[ d''8] d,[ d'\2] d,,[ d''] d,4
  d,8[ d''8] d,[ d'\2] d,,[ d''] d,4
  d,8[ d''8] d,[ d'\2] d,,[ d''] d,4
  d,8[ d''8] d,[ d'\2] d,,[ d''] d,4
  d,8[ d''8] d,[ d'\2] d,,[ d''] d,4
  d,8[ d''8] d,[ d'\2] d,,[ d''] d,4

  \set TabStaff.minimumFret = #9
  d,8[ d''8] fis\3[ <a\2 d,\1>] g\3[ <a\2 d,\1>] fis\3[ <a\2 d,\1>] 
  e\3 [ <a\2 d,\1>] d,\4[ <a'\2 d,\1>] e\3[ <a\2 d,\1>] fis\3[ <a\2 d,\1>] 
  
  \break
  
  \set TabStaff.minimumFret = #4
  \repeat volta 3 {
    <g,,\6 g''\1>8^\markup { \bold "Verse:" }[ b'\2] g\3[ fis'\1] g,,\6[ b'\2] g[ d']
    g,,\6[ e''\2] g,\3[ d'\1] g,,\6[ b'\2] g4
    <g,\6 g''\1>8[ b'\2] g\3[ fis'\1] g,,\6[ b'\2] g[ d']
    g,,\6[ e''\2] g,\3[ d'\1] g,,\6[ b'\2] g4
    <e'\2 d\3 d,,\6>8[ \glissando fis\2] <d,\4 fis'\2>[ e'\2] d,,\6[ d''\3] d,\4[ d'\1]
    d,,\6[ e''\2] d,\4[ d'\1] d,,4\6 d'\4
    <e'\2 d\3 d,,\6>8[ \glissando fis\2] <d,\4 fis'\2>[ e'\2] d,,\6[ <d''\3 fis\2>] d,\4[ d'\1]
    d,,4\6 d'4\4 d,4\6 d'4\4
  }
  
  \break
  
  \set TabStaff.minimumFret = #2
  d,4\6^\markup { \bold "Instrumental:" }<f''\1 d,\4>8[ e\2] <d\1 d,,\6>[ e\1] <d\1 b,\5>4
  <f\1 d,\4>8[ e\1] d\1[ b\2] d\1 d4.\2 
  <d\1 d,,\6>4 d,4\4 d,8\6[ a''\3] d,\4[ d'\1]
  d,,4\6 d'4\4 d,4\6 d'4\4
  
  <d'\1 d,,\6>4 <f\1 d,\4>8[ e\2] <d\1 d,,\6>[ e\1] <d\1 b,\5>4
  <f\1 d,\4>8[ e\1] d\1[ g\1] f\1[ e\1] d\1[ b\2]
  <d\1 d,,\6>4 d,4\4 d,8\6[ a''\3] d,\4[ d'\1]
  d,,4\6 d'4\4 d,4\6 d'4\4
  
  \break 
  
  \set TabStaff.minimumFret = #5
  <a''\1 a,,\5>8^\markup { \bold "Bridge:" } f\2 d\1 g\1 d,\4 f'\2 d\1 a'\1
  a,,\5  f''\2 d\1 g\1 d,\4 f'\2 d\1 a'\1
  d,,,\6 f''\2 d\1 g\1 d,\4 f'\2 d\1 a'\1
  d,,,\6 f''\2 d\1 g\1 d,\4 f'\2 d4\1
  
  <d\1 a,\5>8 g,\3 <cis\2 e,\4> d\1 a,\5 cis'\2 e,4\4
  a,8\5 cis'\2 e,\4 d'\1 a,\5 cis'\2 e,4\4
  <d'\1 a,\5>8 g,\3 <cis\2 e,\4> d\1 a,\5 cis'\2 e,4\4
  a,8\5 cis'\2 e,\4 d'\1 a,\5 cis'\2 e,4\4

  d,8[ d''8] d,[ d'\2] d,,[ d''] d,4
  d,8[ d''8] d,[ d'\2] d,,[ d''] d,4

}

\new TabStaff {
  \set TabStaff.stringTunings = #guitar-double-drop-d-tuning
  \relative c {
    \tabFullNotation
    \music
  }
}

\score {
  \music
  \midi {
  }
} 


