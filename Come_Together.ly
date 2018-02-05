% 
% 
%
\version "2.18.2"
\header {
  title = "Come Together"
  subtitle = "Drop D tuning (D A D G B E)"
  arranger = ""
  composer = ""
}

\layout { \override Voice.StringNumber #'stencil = ##f }

music = {
  \time 4/4
  \stemDown
  \set TabStaff.minimumFret = #0

  \repeat volta 3 {
    d,8[ d8] g16\6( a\6) f'8\5 ~ f4\5 d4\5
    d,8[ d8] g16\6( a\6) f'8\5 ~ f4\5 d4\5

  }
  <d, a'>8[ f'] <d, b' f'>16[ f'8 f16] <d, a'>8[ d'] <d, c'> d'
  <d, a'>8[ f'] <d, b'>8[ f'16 f16] <d, a' f'>8[ d'] <d, c'> d'
  <d, a'>8[ f'] <d, b'>8[ f'8] <d, a' f'>8[ d'] <d, c'> d'
  <d, a'>8[ f'] <d, b'>16[ d'8 f16] <d, a'>8[ d'] <d, c'> d'

  \set TabStaff.minimumFret = #5
  <a e'>8[ e'] <a, e'>8[ d\5] <a e'>8[ d\5] <a fis'>8[ d\5]
  <a e'>8[ e'] <a,\6 d\5>8[ e'\5] <a, e'>8[ <a e'>] <a e'>8[ <gis dis'>]
  <g f'>8[ f'16 g,16] <g f'>8[ d'\5] <g, d'\5>16[ f'16 f16 g,] <g f'>8[ d'\5]
  <g, d'\5>16[ f'16 f16 g,] <g d'\5>8[ <g f'>] r2


  \repeat volta 3 {
    d8[ d8] g16\6( a\6) f'8\5 ~ f4\5 d4\5
    d,8[ d8] g16\6( a\6) f'8\5 ~ f4\5 d4\5

  }
  \alternative {
    {d,8[ d8] g16\6( a\6) f'8\5 ~ f4\5 d4\5}
    {d,8[ d8] g16\6( a\6) f'8\5 r16 d\5 \glissando f g\5 f g\5 f g\5}
  }
  \set TabStaff.minimumFret = #0

  <d, a'>8[ f''16 f] <d,, b'>8[ d''] <d,, a' f''>[ d''] <d,, b' c'>[ d'']
  <d,, a'>8[ <f'' c>8] <d,, b'>8[ <d'' a>] <d,, a' f'' c>[ <d'' a>] <d,, b' c' g>[ <d'' a>]
  <d,, a'>8[ <f'' c>8] <d,, b'>8[ <f'' c>] <d,, a' f'' c>[ <d'' a>] <d,, b' c' g>[ <d'' a>]
  <d,, a'>8[ <f'' c>8] <d,, b'>16[ <d'' a>8 <f c>16] d,,8[ <d'' a>] <d,, b' c' g>[ <d'' a>]

  \set TabStaff.minimumFret = #5

  <a, e' a>8[ <e' a>] <a, e' a>8[ <d\5 a'>] <a e' a>8[ <d\5 a'>] <a fis' a>8[ <d\5 a'>]
  <a e' a>8[ <e' a>] <a, e' a>8[ <d\5 a'>] <a e'>8[ <a e'>] <a e'>8[ <gis dis'>]

\set TabStaff.minimumFret = #0

  <g f''\2>8 f''16\2 g,, <g f''\2>8[ d''] <e\2 g,,>16 \glissando f\2 f\2 g,, <g d''>8 e''\2  
  <e\2 g,,>16 \glissando f\2 f\2 g,, <g d''>8 <g e''\2> r4 
  d''8\4 d16\4 <d\4 fis a>16 | <b,\6 fis'\5> <d'\4 fis> <b,\6 fis'\5>8 <b\6 fis'\5>8 <b\6 fis'\5>8 <b\6 fis'\5>8 <b\6 fis'\5>8 <b\6 fis'\5 b\4 e\3>8 <a\6 e'\5>8 |
  <g d'\5 g\4 d'\3> <g d'\5>
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


