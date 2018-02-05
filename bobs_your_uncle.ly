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

\paper {
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}
\layout { \override Voice.StringNumber #'stencil = ##f }

music = \relative c' {
  \key d \major
  \time 4/4
  {
    \tabFullNotation
    \stemUp
    \repeat volta 2 {
    <d, e''>16 fis''( e d) a( b) cis8 d a fis\4 g
    a fis\4 e16( fis e d)  d,8 g'16( a\3) d8 a
    <g,\6 b'\3>8 d''8 a8 b8\3 <f,\6 a'\3>8 d''8 a8 <d,, fis'>8  
    r8 <d'' a>4 fis,8 <d' a>2
    <d,, e''>16 fis''( e d) a( b) cis8 d a fis\4 g
    a fis\4 e16( fis e d)  d,8 g'16( a\3) d8 a
    <g,\6 b'\3>8 d''8 a8 b8\3 <a,\6 cis'\3>8 d'8 a8 <d,,\6 d''\3>8 r4
    <a'''\1 e\2 d\3 a\4 e\5 a,\6>2.
    <d,,, e''>16 fis''( e d) a( b) cis8 d a fis\4 g
    a fis\4 e16( fis e d)  d,8 g'16( a\3) d8 a
    <g,\6 b'\3>8 d''8 a8 b8\3 <f,\6 a'\3>8 d''8 a8 <d,, fis'>8  
    r8 <g' a>4 fis8\4 <g a>8 fis8\4 e\4 d
    <d, e''>16 fis''( e d) a( b) cis8 d a fis\4 g
    a fis\4 e16( fis e d)  d,8 g'16( a\3) d8 a
    <g,\6 b'\3>8 d''8 a8 b8\3 <a,\6 cis'\3>8 d'8 a8 <d,,\6 d''\3>8 r8
    \tuplet 3/2 { a'''16\1( b a } d,8) a16\2( e'16\2 fis8\2) d\1 b\4 a
    <e, gis'> a'( b) <a d> ~ <a d>4. <g,\6 f'' c g>8 ~ <g\6 f'' c g> 
    <f'' c> <e b>( <d a>) <e b>( <d a>) b a 
    f,\6 d'8 b' a <e, d''> e'' f\glissando fis
    <d,,\6 d''\1> \tuplet 3/2 { a'''16\1( b a } d,8) a16\2( e'16\2 fis8\2) d\1 b\4 a
    <e, gis'>8 a'8 d8 <fis,, gis'>8 a'8 d8 <gis,, b'\3>8 d''8
    <g,, b'\3>8 a'8 d8 <a,\6 cis'\3>8 a'8 d8 <b,\6 d'\3>8 a'8
    a,4 <a' d e a>2 \deadNotesOn e8 e8 \deadNotesOff
    r8 <a,\6 a'\4>4( <d,\6 d'\4>8 <g\6 g'\4>8 <d\6 d'\4>8 <f\6 f'\4>8 <fis\6 fis'\4>8)
    d8 a''16( b16 cis8) d8  fis,,8 b'\3 a g 
    g, fis' g a\4  a, e'\4 fis\4( d)
    d,8 a''16( b16 cis8) d8  fis,,8 b'\3 a g 
    g, fis' g, g'8 e a,4 <a e'>8
    d,8 a''16( b16 cis8) d8  fis,,8 b'\3 a g 
    g, fis' g a\4  a, e'16\4( fis e8 d)
    <f, f'> d'' a f <g, g'\4> <f f'> <e e'>( <d d'>)
    }
    \alternative {
      { r8 <d\6 a'\5 d\4 a'\3 a\2 d\1>4
       <d\6 a'\5 d\4 a'\3 a\2 d\1>8 fis'16\4( e\4) d8 b( a) }
      { r4 <d,\6 a'\5 d\4 a'\3 a\2 d\1>2.}
    }
    d8 a''16( b16 cis8) d8  fis,,8 b'\3 a g 
    g, fis' g a\4  a, e'\4 fis\4( d)
    d,8 a''16( b16 cis8) d8  fis,,8 b'\3 a g 
    g, fis' g, g'8 e a,4 <a e'>8
    d,8 a''16( b16 cis8) d8  fis,,8 b'\3 a g 
    g, fis' g a\4  a, e'16\4( fis e8 d)
    <f, f'> d'' a f <g, g'\4> <f f'> <e e'>( <d d'>)
    r4 <d\6 a'\5 d\4 a'\3 a\2 d\1>2.

    c'8 f'8 e16( f e d) c8 d8 c, a'
    b,8 g'16( a\3 g8) f g f( d) b
    f4 d4 c''4 d4
    gis,16( a\3 gis g) f8( d) d, 
      <a'\5 d\4 a'\3 a\2 d\1>8
      <a\5 d\4 a'\3 a\2 d\1>4
    
    c8 f'8 e16( f e d) c8 d8 c, a'
    b,8 g'16( a\3 g8) f g f( d) b
    
    <d,\6 d'\4>4 <d\6 d'\4>4( <f\6 f'\4>4 <d\6 d'\4>8 <g\6 g'\4> ~ 
    <g\6 g'\4> <d\6 d'\4> <f\6 f'\4>4 <d\6 d'\4>4)
      <d\6 a'\5 d\4 a'\3 a\2 d\1>4
   
    c'8 f'8 e16( f e d) c8 d8 c, a'
    b,8 g'16( a\3 g8) f g f( d) b
    f4 d4 c''4 d4
    gis,16( a\3 gis g) f8( d) d, 
      <a'\5 d\4 a'\3 a\2 d\1>8
      <a\5 d\4 a'\3 a\2 d\1>4
    
    c8 f'8 e16( f e d) c8 d8 c, a'
    b,8 g'16( a\3 g8) f g f( d) b

    a8 <fis' fis'> <e e'>( <d d'> <e e'> <d d'>) \acciaccatura { <a a'> } <b b'>( <a a'>)
    \acciaccatura { <d d'> } <e e'>( <d d'>)
      \acciaccatura { <a a'> } <b b'>( <a a'>)
      <fis\6 fis'\4> <g\6 g'\4> <gis\6 gis'\4> <a\6 a'\4>
    
    r8 <fis' fis'> <e e'>( <d d'> <e e'> <d d'>) \acciaccatura { <a a'> } <b b'>( <a a'>)
    <g'\4 g'\1>4 <g\4 g'\1>8 <fis fis'>8 ~ <fis fis'>8 <e e'> ~ <e e'> a,

    r8 <fis' fis'> <e e'>( <d d'> <e e'> <d d'>) \acciaccatura { <a a'> } <b b'>( <a a'>)
    \acciaccatura { <d d'> } <e e'>( <d d'>)
      \acciaccatura { <a a'> } <b b'>( <a a'>)
      <fis\6 fis'\4> <g\6 g'\4> <gis\6 gis'\4> <a\6 a'\4>

    r8 <fis' fis'> <e e'>( <d d'>) <fis\4 fis'\1> <g\4 g'\1> <gis\4 gis'\1> <a\4 a'\1>

    r8 \tuplet 3/2 { a'16\1( b a } d,8) a16\2( e'16\2 fis8\2) d\1 b\4 a
    <e, gis'> a'( b) <a d> ~ <a d>4. <g,\6 f'' c g>8 ~ <g\6 f'' c g> 
    <f'' c> <e b>( <d a>) <e b>( <d a>) b a 
    f,\6 d'8 b' a <e, d''> e'' f\glissando fis
    <d,,\6 d''\1> \tuplet 3/2 { a'''16\1( b a } d,8) a16\2( e'16\2 fis8\2) d\1 b\4 a
    <e, gis'>8 a'8 d8 <fis,, gis'>8 a'8 d8 <gis,, b'\3>8 d''8
    <g,, b'\3>8 a'8 d8 <a,\6 cis'\3>8 a'8 d8 <b,\6 d'\3>8 a'8
    a,4 <a' d e a>2 \deadNotesOn e8 e8 \deadNotesOff
    r8 <a,\6 a'\4>4( <d,\6 d'\4>8 <g\6 g'\4>8 <d\6 d'\4>8 <f\6 f'\4>8 <fis\6 fis'\4>8)

    \repeat volta 2 {
      d8 a''16( b16 cis8) d8  fis,,8 b'\3 a g 
      g, fis' g a\4  a, e'\4 fis\4( d)
      d,8 a''16( b16 cis8) d8  fis,,8 b'\3 a g 
      g, fis' g, g'8 e a,4 <a e'>8
      d,8 a''16( b16 cis8) d8  fis,,8 b'\3 a g 
      g, fis' g a\4  a, e'16\4( fis e8 d)
    }
     \alternative {
        { <f, f'> d'' a f <g, g'\4> <f f'> <e e'>( <d d'>)
         r8 <d\6 a'\5 d\4 a'\3 a\2 d\1>4
         <d\6 a'\5 d\4 a'\3 a\2 d\1>8 fis'16\4( e\4) d8 b( a) }
        { <f f'> d'' a f <g, g'\4> <f f'> <e e'> <f f'> ~ }
     }
     <f f'> d'' a g <g,\6 g'\4> <f f'> <e e'> <f f'> ~
     <f f'> d'' a g <g,\6 g'\4 b\3> <a\6 a'\4 cis\3>4 <d, d' d'\3>8 ~
     <d d' d'\3>4 <d\6 a'\5 d\4 a'\3 a\2 d\1>2.

    \repeat volta 3 {
    d8 <fis' fis'> <e e'>( <d d'> <e e'> <d d'>) \acciaccatura { <a a'> } <b b'>( <a a'>)
    <g b'\3> a' d <a,\6 cis'\3> ~ <a\6 cis'\3> <a d cis'\3 a d> <a d cis'\3 a d> d, ~
    d <b''\4 b'\1> <a\4 a'\1>( <d,\4 d'\1>) <fis\4 fis'\1> <e\4 e'\1>( <d\4 d'\1>) <a\5 a'\2>
    }
     \alternative {
        { <g b'\3> a' d <f,,\6 a'\3> a' d <e,, g'> d'' }
        { <g,, b'\2> a' d <f,,\6 a'\3> a' d <e,, g'> d'' }
     }
    d,,8 <fis' fis'> <e e'>( <d d'> <e e'> <d d'>) \acciaccatura { <a a'> } <b b'>( <a a'>)
    <g b'\3> a' d <a,\6 cis'\3> a' d <b, d'\3> d' 
    <a,\6 cis'\3> a' d <b, d'\3> a' d <cis,\6 e'\3> d'
    <d,,\6 a'\5 d\4 e'\3 a,\2 d\1>8( fis''1\3)
  }
}

%{
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
%}


\new TabStaff {
  \set TabStaff.stringTunings = #guitar-dadgad-tuning
  \transpose c' c
  \relative c  {
    \music
  }
}

\score {
<<
  \set TabStaff.stringTunings = #guitar-dadgad-tuning
 \music
>>
  \midi {
    \tempo 4 = 70
  }
}
