
\version "2.18.2"
\include "bend.ly"
\header {
  title = "Sultans of Swing"
  subtitle = "Fills and Solos"
  arranger = ""
  composer = ""
}

\layout { \override Voice.StringNumber #'stencil = ##f }

music = {
  \time 4/4
  \stemDown
  \set TabStaff.minimumFret = #0


  r2^\markup { \bold "Introduction:" }
  \set TabStaff.minimumFret = #5
  <g' c>4 <g c>4 <g c>8\glissando <a d>8 ~ <a d>2.
  r2 r8[ g8\4] \glissando a8[ d8] ~ d2 ~ d8 a8 f'8\3 d8\3 ~ d4\3 ~
  d8\3 d16\3 f\2 a8\1 c4 a8 f4. f8 e8\2( f8) e8\2 d8 ~ d1

  \break

  \set TabStaff.minimumFret = #2
<d,\5 a'\4 d\3 f\2>4.^\markup { \bold "Verse/fill 1:" }
  <d\5 a'\4 d\3 f\2>8 ~ <d\5 a'\4 d\3 f\2>4. <c\5 g'\4 c\3 e\2>8 ~
  <c\5 g'\4 c\3 e\2>4. <bes\5 f'\4 bes\3 d\2>8 ~  <bes\5 f'\4 bes\3 d\2>4.
  <e\4 a\3 cis\2>8 ~ <e\4 a\3 cis\2>4
  r2 r8 b'8\3
 \bendOn
 b8\3 ( cis8\3 )( b4\3 )  b16\3 ( cis16\3 ) (b8\3 ) a8\3 b8\3 \glissando d4\3
 r8 d4.\3 r8 c8\3 ~ c4\3 r8 ais4.\3 r8 a8 ~
 a4 a4 \glissando cis8\3 a'4\1 cis,8\3
 a'4\1 cis,8\3 a'4\1  <\deadNote b\2 \deadNote g\3>8 <\deadNote b\2 \deadNote g\3>8
 <f,\5 c'\4 f\3 a\2>16  <f\5 c'\4 f\3 a\2>16
 <f\5 c'\4 f\3 a\2>4 \deadNotesOn < c'\4 f\3 a\2>8 \deadNotesOff
 <f,\5 c'\4 f\3 a\2>4  <f\5 c'\4 f\3 a\2>8 \deadNotesOn < c'\4 f\3 a\2>8 \deadNotesOff <f,\5 c'\4 f\3 a\2>8 ~
 <f\5 c'\4 f\3 a\2>4 \deadNotesOn < c'\4 f\3 a\2>8 \deadNotesOff <f,\5 c'\4 f\3 a\2>4
 <f\5 c'\4 f\3 a\2>8 \deadNotesOn < c'\4 f\3 a\2>4 \deadNotesOff
 r2 <g\4 c\3 e\2>8 r8 r8 <g\4 c\3 e\2>8
 r4 <a\4 c\3 f\2>8 <g\4 c\3 e\2>8 <a\4 c\3 f\2>8 <g\4 c\3 e\2>8 r8 <f\4 ais\3 d\2>8 ~ <f\4 ais\3 d\2>1
 r4 g8\4 \glissando a8\4 d8\3 a8\4 f'8\3 d8\3 ~ d4\3
 r8 <ais\4 d\3>8 r8 <d\3 f\2> r8 <ais\4 d\3>
 <ais\4 d\3> \glissando <c\4 e\3>8 ~ <c\4 e\3>2 r8 d,\5 \glissando
 \bendOff
 e8\5 g8\4( a\4 ) c\3~ c4\3 r4


  \break

  \set TabStaff.minimumFret = #0
  <d,\5 a'\4 d\3 f\2>4.^\markup { \bold "Verse/Fill 2:" }
  <d\5 a'\4 d\3 f\2>8 ~ <d\5 a'\4 d\3 f\2>4. <c\5 g'\4 c\3 e\2>8 ~
  <c\5 g'\4 c\3 e\2>4. <bes\5 f'\4 bes\3 d\2>8 ~  <bes\5 f'\4 bes\3 d\2>4.
  <e\4 a\3 cis\2>8 ~ <e\4 a\3 cis\2>4
  a8\3 \glissando cis8\3 a'8\1 cis,8\3 a'8\1 cis,8\3 a'8\1 <cis,\3 ais'\1>4 <cis\3 a'\1>4 <b\3 g'\1>4 a8\3
  f'2\1 r2 r1
  r2 d'8\1( cis8\1) a8\2 e8\3 \glissando d8\3 \glissando cis8\3 a8\4 \glissando g8\4 \glissando fis8\4 e8\5 \glissando d8\5 \glissando c8\5
  r1 r1 r2  <g'\4 c\3 e\2>8 r8 r8 <g\4 c\3 e\2>8
  r4 <a\4 c\3 f\2>8 <g\4 c\3 e\2>8 <a\4 c\3 f\2>8 <g\4 c\3 e\2>8 r8 <f\4 ais\3 d\2>8 ~ <f\4 ais\3 d\2>1

  \break

 r2^\markup { \bold "Pre Chorus:" }
 <f'\3 d'\1>8 <e\3 c'\1>8 r8 <f\3 a\2>8 ~ <f\3 a\2>4.
 <ais,\4 d\3>8 r8 <d\3 f\2> r8 <ais\4 d\3>
 <ais\4 d\3> \glissando <c\4 e\3>8 ~ <c\4 e\3>2
 r4  r4 r8 <ais\4 d\3>8 r8 <d\3 f\2> r8 <ais\4 d\3>
 <ais\4 d\3> \glissando <c\4 e\3>8 ~ <c\4 e\3>2.
 r1

 \break

 r2^\markup { \bold "Chorus:" }
 <a\4 d\3 f\2>8 <g\4 c\3 e\2>8 r8 <f\4 bes\3 d\2>8 ~ <f\4 bes\3 d\2>2. <a\4 c\3 f\2>4
 <a\4 c\3 f\2>8 ~ <g\4 c\3 e\2>8 r8 <g\4 c\3 e\2>8 ~ <g\4 c\3 e\2>4 r16 cis\3 \glissando f8\3
 <f\3 a\2>16 r16 <e\3 g\2> <e\3 g\2> \deadNotesOn < e\3 g\2>8 \deadNotesOff < e\3 g\2>8 ~ < e\3 g\2>4. r8
 r2
 <a,\4 d\3 f\2>8 <g\4 c\3 e\2>8 r8 <f\4 bes\3 d\2>8 ~ <f\4 bes\3 d\2>2. <a\4 c\3 f\2>4
 <a\4 c\3 f\2>8 ~ <g\4 c\3 e\2>8 r8 <g\4 c\3 e\2>8 ~ <g\4 c\3 e\2>4 ~ <g\4 c\3 e\2>8.
 d16\5 \glissando
 e8\5 g8\4( a\4 ) c\3~ c2\3

 \break

  \set TabStaff.minimumFret = #0
  r2.^\markup { \bold "Fill 3:" }
  \deadNotesOn < a\4 d\3>4 \deadNotesOff
  <g'\2 cis\1>8 r8 r8 <g\2 b\1> r8  <g\2 cis\1>8 r8 <f\3 a\2 d\1>8 <d\4 f\3 a\2 d\1>2 r2

 \break

  \bendOn
  \set TabStaff.minimumFret = #0
  d16\3^\markup { \bold "Fill 4:" } ( e16\3 ) e8\2 a8\1 e8\2 g8\2 ( a8\2 ) cis\1 g16\2 ( a16\2 ) (g8\2 ) b4\1
  g16\2 ( a16\2 ) (g8\2 )  g16\2 ( a16\2 ) (g8\2 )  g8\2 ( a2.\2 )  g16\2 ( a16\2 ) (g8\2 ) f4.\2 c4.\3 r4

 \break


 \set TabStaff.minimumFret = #0
  d8\3^\markup { \bold "Fill 5:" } \glissando e8\3 g\2 <e\3 g\2> \glissando \tuplet 3/2 { <d\3 f\2>4 <ais\4 d\3 f\2> <ais\4 d\3 f\2> }
  <ais\4 d\3 f\2>1
  r1 r4 r16 b16\4 \glissando c8\4 d'\1 <e,\3 c'\1> r8 <f\3 a\2> \glissando  <f\3 a\2>4
  r8 <ais,\4 d\3>8 r8 <d\3 f\2> r8 <ais\4 d\3>
 <ais\4 d\3> \glissando <c\4 e\3>8 e\3 g\2 ~ g4.\2 c,8\4
 r16 d,\5 \glissando
 \bendOff
 e8\5 g8\4( a\4 ) c\3 a\4 c\3 a\4 c\3 \glissando d\3 ~ d2.\3

 \break

 \bendOn
 r8^\markup { \bold "Fill 6:" } <d\3 g\2>16 ( e16\3 ) ( d4\3 ) <d\3 g\2>16 ( e16\3 ) ( d8\3 ) <d\3 g\2>16 ( e16\3 ) ( d8\3 ) d4.\3 r8 r2
 r1 r16 b'\1 \glissando cis8\1 r8 cis\1 a\2 e\3 e4\3 d8\3 cis\3 a\4 a'\1 ~ a2\1 <g\2 c\1>4 ( a2. )

\break

 r4^\markup { \bold "Fill 7:" } b4\2 ( cis2\2 ) e8\1 b8\2 ( cis8\2 ) ( b4\2 ) a8\2 ~ a16\2 g\3 \glissando a8\3 f'2. r4

 \break

 \bendOn
 g,4\3^\markup { \bold "First Solo:" } ( a4\3 )  \tuplet 3/2 { r4  g4\3 g4\3 }
 g8\3 ( a8\3 ) ( g8\3 )
 \bendOff
 f16\3( g16\3 f4\3) ~ f8\3 e16\3( f16\3 e2\3) ~ e8\3 cis\3 a\4 cis\3 e\2 a4\1 cis\1
 \bendOn e8 ( f8 ) ( e8)
 \tuplet 3/2 {d4\1 a\2 f\3} d4.\4 a'8\2 c4.\2
 \bendOff
 bes16\2 ( c\2 bes4.\2)  gis8\2 a2\2 \deadNote e'8\3 b8\2 \deadNote e8\3 \deadNote e8\3 gis,\2( a4.\2) r2
 \bendOn
 g8\3 ( a8\3 )
 \bendOff
 c8\2
 \bendOn
 g8\3 ( a8\3)
 \bendOff
 f'8\1 c8\2
 \bendOn
   \bendGrace { \preBendRelease g4\3( a\3)( } g8\3)  ~ g8\3
 \bendOff
 f4\3 f8\3( f4\3) r8. d'16\1
 \glissando \tuplet 3/2 { f4\1 e\1 c\2 }
% \bendOff
 g8\3 a4\3( g8\3) c8\2 c4\2 c4.\2 r4 |
  \bendOn
 c4\2 ( d4\2 ) c16\2 ( d16\2 )  ( c8\2 ) ais8\2
 \bendOff
 \bendOn
 c8\2 ( | d8\2 )
c8\2 ( d4\2 ) (c4.\2)  a8\2 |
\bendOff
f'8\1( d8\1) a8\2 d8\1
\bendOn
c\2( d8\2) a8\2 a8\2 |
g8\3 f8\3 r8 f,8\4 ais8\3 d8\2 f8\2 d8\2
| %M101
r8 g,16\4 c16\3 e8\2 f8\2 \glissando g8\2 f8\2 r8 e8\2 \glissando
| %M102
 f8\2 \glissando g8\2 r8 f,8\4 ais8\3 d8\2 f8\2 d8\2
 | %M103
 r4 g,8\4 c4\3 d4\3  c8\3
 | %M104
 d8\3 ( e8\3 ) g8\2 d16\3 (e16\3) (d8\3) c8\3 d8\3 d8\3 ~ d1\3

\break

g4\3^\markup { \bold "One More Thing:" } ( a4\3 )  g4\3 f8\3 g8\3
| %m1
f8\3 d4\4 d4.\4 r8 g8\3 (a8\3) (g8\3)
\bendOff
g8\3 e16\3( g16\3 e8\3) d16\3 (e16\3 d8\3) c16\3( d16\3
| %m5
c8\3) g16\4( a16\4 g8\4) d16\5( e16\5 d4\5) r4
| %m6
r4 r8 g'16\2 g16\2 a16\2( g16\2) f16\3 g16\2 f8\3 d8\3
| %m6
r4 r8 d8\3 ~ d4\3 r16 d16\3 \glissando e8\3
| %m7
g16\2( a16\2 g16\2) e16\3 c'16\1 a16\2( g16\2) e16\3  c'16\1 a16\2( g16\2) e16\3 c'16\1 a16\2( g16\2) e16\3
| %m8
c'16\1 a16\2( g16\2) e16\3 c'16\1 a16\2( g16\2)  \deadNote e16\3 \deadNotesOn e8\3 e8\3 e4\3 \deadNotesOff
| %m9
\bendOn
g16\3 (a16\3)
\bendOff
a16\2 d16\1 c16\2( a16\2) g16\3 a16\2 g16\3( f16\3) d16\4 f16\3 c16\4( d16\4) f16\3 a16\2
| %m10
g4\3 r2 r8 f16\3 g16\3
| %m11
a4\2 r8 f16\3 g16\3 ais4\2 \deadNotesOn <e\3 g\2>8 <e\3 g\2>8 \deadNotesOff
| %m12
\bendOn
ais8\2 (c8\2) e8\1 ais,16\2 (c16\2) (ais8\2) d8\1
\bendOff
\deadNotesOn e8\3 e8\3 \deadNotesOff
| %m13
f16\1( d16\1) a16\2 d16\1 f16\1( d16\1) a16\2 d16\1 f16\1( d16\1) a16\2 d16\1 f16\1( d16\1) a16\2 d16\1
| %m14
f16\1( d16\1) ais16\2 d16\1 f16\1( d16\1) ais16\2 d16\1 f16\1( d16\1) ais16\2 d16\1 f16\1 \deadNote f16\1 c16\2 e16\1
| %m15
g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1
| %m16
g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) a,16\2 d16\1
g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) a,16\2 d16\1
| %m17
f16\1( d16\1) a16\2 d16\1 f16\1( d16\1) a16\2 d16\1 f16\1( d16\1) a16\2 d16\1 f16\1( d16\1) a16\2 d16\1
| %m18
f16\1( d16\1) ais16\2 d16\1 f16\1( d16\1) ais16\2 d16\1 f16\1( d16\1) ais16\2 d16\1 f16\1 \deadNote f16\1 c16\2 e16\1
| %m19
g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1
| %m20
g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) a,16\2 d16\1
g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c16\2 e16\1 g16\1( e16\1) c8\2
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


