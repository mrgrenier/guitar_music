%
%
%
\version "2.18.2"
\header {
  title = "Never Going Back Again"
  subtitle = "Drop D tunning (D A D G B E)"
  arranger = "Capo 3rd fret"
  composer = "Linsey Buckingham"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

music = {
  \time 4/4
  \stemDown
  \repeat volta 2 {
    d,8[ <d'' a fis>8] a,8 <cis' a e>16( <d fis,>16) d,,8 <a''' fis,>16 d, <a, a'> a'' <d, fis,> a
    d,,8 <d'' a fis>16( <cis e,>16) a,8 <cis' a e>8( <d fis, d,>8) <a' fis,>16 d, <a, a'> <a'' fis,> d,8
    <fis a,,>16 e\2 a, fis' <e\2 a,,>16 a, fis' e\2 <a, a,>16 fis' e\2 a, <fis' a,,>16 e\2 a, fis'
    <d d,,> a fis <e'\2 g,\4>( <a,\4 fis'\2 a,,>8) <e'\2 g,\4> <d fis,\4 d,>16 fis, a' a,, a' fis d'8
  }
  \set TabStaff.minimumFret = #7
  d,,8[ <a''\4 d'>] a,\5[ <a'\4 cis'>] <d,, d'''>16 a''' d, d' <a,, a''> d' d' a
  <d,,, d''>8 [ <a''\4 d'>] <a, cis''>16 g'' a, g' <d,, d'''>16 a''' d, d' <a,, a''> d' d' a
  d,,,8[ <a''\4 d'>] a,\5[ <a'\4 cis'>] <d,, d'''>16 a''' d, d' <a,, a''> d' d' a
  \set TabStaff.minimumFret = #0
  b,,8[ <d' a fis>8] a,16 <cis' a> e, g <b, d' a>8 e16 a' a,,8 <e' cis'>16( <d' fis,>)
  d,,8[ <d'' a fis>8] a,8 <cis' a e>16( <d fis,>16) d,,8 <a''' fis,>16 d, <a, a'> a'' <d, fis,> a
  d,,8 <d'' a fis>16( <cis e,>16) a,8 <cis' a e>8( <d fis, d,>8) <a' fis,>16 d, <a, a'> <a'' fis,> d,8
  <fis a,,>16 e\2 a, fis' <e\2 a,,>16 a, fis' e\2 <a, a,>16 fis' e\2 a, <fis' a,,>16 e\2 a, fis'
  <d d,,> a fis <e'\2 g,\4>( <a,\4 fis'\2 a,,>8) <e'\2 g,\4> <d fis,\4 d,>8 a, <d' a fis>4

}

\new TabStaff {
  \set TabStaff.stringTunings = #guitar-drop-d-tuning
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
