% 
% 
%
\version "2.17.20"
\header {
  title = "Superstition"
  arranger = "Adam Rafferty"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

music = {
  \time 4/4
  \stemDown
  \set TabStaff.minimumFret = #0
  \override Beam.concaveness = #10000
  r8[ e8] d\5[ e] g[ r16 d] r8[ d]
  a8[ b8] d\5[ e] g[ r16 d] r8[ d]
  r8[ e8] d\5[ e] g[ r16 d] r8[ d]
  a8[ b8] d\5[ e] g[ r16 d] r8[ d]
  e,16 b'16 e8 <d\5 \deadNote e, > e <e, g'>[ r16 d'] \deadNote e,8[ d']
  e,16 a16( b8) <d\5 \deadNote e, > e <e, g'>[ r16 d'] \deadNote e,8[ e']
  e,16 b'16 e8 <d\5 \deadNote e, > e <e, g'>[ r16 d'] \deadNote e,8[ d']

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
