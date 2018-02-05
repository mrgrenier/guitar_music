% 
% 
%
\version "2.18.2"
\header {
  title = "Josie"
  subtitle = "Bass"
  arranger = ""
  composer = "Steely Dan"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

music = {
  \time 4/4
  \stemDown
  \set TabStaff.minimumFret = #0

  e,4. r16 e b'8\6 d4\5 e8\5  
  e,4. r16 e b'8\6 d4\5 e8\5
  e, d'\5 r cis\5  d\5 r  e,  e'\5 
  \repeat volta 2 {
  }
}

\new TabStaff {
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


