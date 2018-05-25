% 
% 
%
\version "2.18.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Rondo Alla Turca"
  composer = "Wolfgang Amadeus Mozart"
}

\layout { \override Voice.StringNumber #'stencil = ##f }


music_tenor = {
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
  \repeat volta 2 {
   b16\3( a) gs( a) c4 |
   d16( c) b( c) e4 |
   f16 e ds e b'( a) gs( a) |
   b( a) gs( a) c4 |
   a8 c  \grace { g(  a) } b <fs a> |
   <e g> <fs a> \grace { g( a) } b <fs a> |
   <e g> <fs a> \grace { g( a) } b <fs a> |
   <e g> <ds fs> e4 | 
  }
  \repeat volta 2 {
    <c e>8 <d f> <e g> <e g>
    a16 g f\2 e\2 <b d>8 g\4 |
    <c e>8 <d f> <e g> <e g>
    a16 g f\2 e\2 <b d>4 |
    <a c>8 <b d> <c e> <c e> |
    f16 e d c <gs b>8 e |
    <a c>8 <b d> <c e> <c e> |
    f16 e d c <gs b>4  |
    b16\3( a) gs( a) c4 |
    d16( c) b( c) e4 |
   f16 e ds e b'( a) gs( a) |
   b( a) gs( a) c8 ds,\3 |
   a' b c b | 
   a gs a e |
   f d  c a |
   \appoggiatura  b <gs c>16 b a b a4 |
  }
  \repeat volta 2 {
  \set TabStaff.minimumFret = #2
   <a\3 a'>8 <b\3 b'> <cs\3 cs'>4
   <a\3 a'>8 <b\3 b'> <cs\3 cs'> <b\3 b'>
   <a\4 a'>8 <gs\4 gs'\1> <fs\4 fs'\2> <gs\4 gs'\1> | 
   \set TabStaff.minimumFret = #0
   <a\4 a'\1>8 <b b'\1>8 <gs\3 gs'\1> <e\4 e'\1>8 |
  \set TabStaff.minimumFret = #2
   <a\3 a'\1>8 <b\3 b'> <cs\3 cs'>4
   <a\3 a'\1>8 <b\3 b'> <cs\3 cs'> <b\3 b'>
   <a\4 a'\1>8 <gs\4 gs'\1> <fs\4 fs'\2> <b\2 b'\1> |
   <gs\3 gs'\1> <e e'> <a\3 a'\1>4 |
  }
  \repeat volta 2 {
   \set TabStaff.minimumFret = #6
    cs'16( d) cs b a\2 b a\2 gs
    fs( a\2) gs fs f fs gs f 
    cs( ds) f cs fs f\3 fs gs 
    a\2 gs\2 a\2 b\1 cs\1 c\1 cs\1 c\1 
    cs16( d) cs b a\2 b\1 a\2 gs\2 
   \set TabStaff.minimumFret = #5
   fs\2( a\2) gs\2 fs\2 e\2 fs\2 gs\2 e\2
   \set TabStaff.minimumFret = #4
   cs\3 ds\3 e\2 cs\3 ds\2 e\2 fs\2 ds\2 |
   c\3 cs\3 ds\2 c\3 
   \set TabStaff.minimumFret = #2
   cs4\2 |
  }
  \repeat volta 2 {
   e16\2( d\2) cs b\3 a\3( b\3) cs\2( d\2) |
   e16\2 fs\1 gs\1 a\1 a\1( gs\1) fs\1 e\2 |
   e16\2( d\2) cs\3 b\2 a\3( b\3) cs\2( d\2) |
   e16\2( fs\2) gs\1( a\1) as8\1 b |
   e,16\2( d\2) cs\3 b\2 a\3( b\3) cs\2( d\2) |
   e16\2 fs\1 gs\1 a\1 a\1( gs\1) fs\1 e\2 |
   e16\2( ds\2) cs\3 b\2 cs\2( e\2) <fs, a> cs'\2 |
   \set TabStaff.minimumFret = #0
   b16\2( d\2) gs,\3 b\2 s4 |
   \set TabStaff.minimumFret = #6
    cs'16( d) cs b a\2 b a\2 gs
    fs( a\2) gs fs f fs gs f 
  }
  \repeat volta 2 {
  }
}


music_baritone = {
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
   \repeat volta 2 {
   s4 a,,8 <c e> |
   <c e> <c e> a <c e> |
   <c e> <c e> a c |
   a c a( c) |
   c c e, e |
   e e e e |
   e e e e |
   b' b e,4 |
   }
  \repeat volta 2 {
   r4 c' |
   e, g |
   r4 c |
   e, g |
   r4 a |
   c e, |
   r4 a |
   c e, |
   s4 a8 <c e> |
   <c e> <c e> a <c e> |
   <c e> <c e> a c |
   a c f\5 a\4 |
   r4 e8\5 e\5 |
   d d c c |
   d f e4 |
   e, a |
  }
  \repeat volta 2 {
  \set TabStaff.minimumFret = #0    
    r4 <a a'\4>8 a
    a a <a a'\4>8 a
    a a d4\5 
    ds\5 e,
    r4 <a a'\4>8 a
    a a <a a'\4>8 a
    a a d4\5
    e, a 
  }   
  \repeat volta 2 {
   \set TabStaff.minimumFret = #6
   a4 fs' |
   a gs |
   b\4 fs |
   a f |
   a,4 fs' |
   a gs |
   \set TabStaff.minimumFret = #4
   e fs |
   ds cs |
  }
  \repeat volta 2 {
    a4 a |
    a  b |
    gs a |
    a  e |   
    gs a |
    a  b |
    gs a |
    d8 e a a, |
   \set TabStaff.minimumFret = #6
   a4 fs' |
   a gs |
  }
  \repeat volta 2 {
  }
}

music = \relative c' {
  \key a \major
  \time 2/4
<<
  {
    \voiceOne
    \music_tenor
   }
  \\
  {
    \stemDown
    \override NoteColumn #'force-hshift = #0.5
    \music_baritone
  }
>> 
}

<<
\new TabStaff {
    \tabFullNotation
    \music
}
>>

\score {
  \unfoldRepeats \articulate
     \music
    \midi {
	\tempo 4 = 130
  }
} 


