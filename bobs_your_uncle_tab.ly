% 
% 
%
\version "2.17.16"
\header {
  title = "Bob's Your Uncle"
  subtitle = "Tunning (D A D G A D)"
  arranger = "Arranged by Jeff Rady"
  composer = "Laurence Juber"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

music = \relative c' {
  \key d \major
  \time 4/4
<<
  {
    \voiceOne
    d,1 s2 d2 <g\6 b'\3>2 <f\6 a'\3>4. d8 ~ d1
    d1 s2 d2 <g\6 b'\3>2 <a\6 cis'\3>4. d,8 ~ d4
    <a'''\1 e\2 d\3 a\4 e\5 a,\6>2.
    d,,,1 s2 d2 <g\6 b'\3>2 <f\6 a'\3>4. d8 ~ d1
    d1 s2 d2 <g\6 b'\3>2 <a\6 cis'\3>4. d,8 ~ d1
    e2. r8 g8 ~ g1
    f8 d'4. e,2
    d1
    e4. fis8\6 ~ fis4\6 gis4\6
    g4. a8\6 ~ a4\6 b4\6
    a1
    s1
    d,2 fis2
    g2 a2
    d,2 fis2
    g4 g4 r8 a4 a8
    d,2 fis2
    g2 a2
  }
  \\
  {
    e''16( fis e d) a( b) cis8 d a fis\4 g
    a fis\4 e16( fis e d) ~ d8 g16( a\3) d8 a
    r8 d8 a8 b8\3 r8 d8 a8 fis8 ~ fis8
    <d' a>4 fis,8 <d' a>2
    e16( fis e d) a( b) cis8 d a fis\4 g
    a fis\4 e16( fis e d) ~ d8 g16( a\3) d8 a
    r8 d8 a8 b8\3 r8 d8 a8 d8\3 ~ d4\3 s2.
    e16( fis e d) a( b) cis8 d a fis\4 g
    a fis\4 e16( fis e d) ~ d8 g16( a\3) d8 a
    r8 d8 a8 b8\3 r8 d8 a8 fis8 ~ fis8
    <g a>4 fis8\4 <g a>8 fis8\4 e\4 d
    e'16( fis e d) a( b) cis8 d a fis\4 g
    a fis\4 e16( fis e d) ~ d8 g16( a\3) d8 a
    r8 d8 a8 b8\3 r8 d8 a8 d8\3 ~ d8\3 
    \tuplet 3/2 { a'16\1( b a } d,8) a16\2( e'16\2 fis8\2) d\1 b\4 a
    gis a( b) <a d> ~ <a d>4. <f' c g>8 ~ <f c g> 
    <f c> <e b>( <d a>) <e b>( <d a>) b a ~ a4
    b8 a d e f\glissando fis
    d \tuplet 3/2 { a'16\1( b a } d,8) a16\2( e'16\2 fis8\2) d\1 b\4 a
    gis8 a8 d8 gis,8 a8 d8 b8\3 d8
    b8\3 a8 d8 cis8\3 a8 d8 d8\3 d8
    r4 <a d e a>2 \deadNotesOn e8 e8 \deadNotesOff
    r8 <a,\6 a'\4>4( <d,\6 d'\4>8 <g\6 g'\4>8 <d\6 d'\4>8 <f\6 f'\4>8 <fis\6 fis'\4>8)
    r8 a'16( b16 cis8) d8 ~ d8 b\3 a g ~
    g fis g a\4 ~ a\4 e\4 fis\4( d)
    r8 a'16( b16 cis8) d8 ~ d8 b\3 a g ~
    g fis4 g8 e4. e8
    r8 a16( b16 cis8) d8 ~ d8 b\3 a g ~
    g fis g a\4 ~ a\4 e16\4( fis e8 d)
  }
  \\
  {
  }
>> 
}

{
\new StaffGroup <<
  \new Staff {
     \transpose c' c
     \clef "treble"
     \music
   }
\new TabStaff {
  \set TabStaff.stringTunings = #guitar-dadgad-tuning
  \transpose c' c
  \relative c  {
    \tabFullNotation
    \music
  }
}
>>
}

%{
\new TabStaff {
    \tabFullNotation
  \set TabStaff.stringTunings = #guitar-dadgad-tuning
  \transpose c' c
  \relative c  {
    \tabFullNotation
    \music
  }
}
%}

\score {
<<
  \set TabStaff.stringTunings = #guitar-dadgad-tuning
 \music
>>
  \midi {
    \tempo 4 = 70
  }
}
