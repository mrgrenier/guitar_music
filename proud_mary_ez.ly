% 
% 
%
\version "2.17.20"
\header {
  title = "Proud Mary"
  composer = "Creedence Clearwater Revival"
}

\include "predefined-guitar-fretboards.ly"

\storePredefinedDiagram #default-fret-table
                        \chordmode { g'' }
                        #guitar-tuning
                        #"x;x;o;o;o;x;"

\storePredefinedDiagram #default-fret-table
                        \chordmode { f'' }
                        #guitar-tuning
                        #"x;x;3-3;2-2;1-1;1-1;"

\storePredefinedDiagram #default-fret-table
                        \chordmode { f:6 }
                        #guitar-tuning
                        #"x;x;3-3;2-2;3-4;1-1;"

\layout { \override Voice.StringNumber #'stencil = ##f }

<<
  \new ChordNames {
    \chordmode {
      c4. a2 g''8 | c4. a2 g''8 | c4. a4 g'' f''8 |
      s4 s8 f:6 f''4 d4
      d1 s1 s1 s1 s1 s1 s1 s1 s1 s1
      a1 s1
      b1:m s1
      d1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
      a1 s1
      b1:m s1
      d1 s1 s1 s1
      c4. a2 g''8 | c4. a2 g''8 | c4. a4 g'' f''8 |
      s4 s8 f:6 f''4 d4
    }
  }
%{
  \new FretBoards {
    \chordmode {
      c4. a2 g''8 | c4. a2 g''8 | c4. a4 g'' f''8 |
      s4 s8 f:6 f''4 d4
      d1 s1 s1 s1 s1 s1 s1 s1 s1 s1 
      a1 s1
      b1:m s1
      d1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
      a1 s1
      b1:m s1
      d1 s1 s1 s1
      c4. a2 g''8 | c4. a2 g''8 | c4. a4 g'' f''8 |
      s4 s8 f:6 f''4 d4
    }
  }
%}
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c'' {
      \improvisationOn
      c8 c8 r8 a8 ~ a8 a8 a8 g8
      c8 c8 r8 a8 ~ a8 a8 a8 g8
      c8 c8 r8 a8 r8 g8 r8 f8 ~ 
      f8 f8 f8 f8 f4 d4
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      a8 a8 r8 a8 a8 a8 r8 a8
      a8 a8 r8 a8 a8 a8 r8 a8
      b8 b8 r8 b8 b8 b8 r8 b8
      b8 b8 r8 b8 b8 b8 r8 b8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      a8 a8 r8 a8 a8 a8 r8 a8
      a8 a8 r8 a8 a8 a8 r8 a8
      b8 b8 r8 b8 b8 b8 r8 b8
      b8 b8 r8 b8 b8 b8 r8 b8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      d8 d8 r8 d8 d8 d8 r8 d8
      c8 c8 r8 a8 ~ a8 a8 a8 g8
      c8 c8 r8 a8 ~ a8 a8 a8 g8
      c8 c8 r8 a8 r8 g8 r8 f8 ~ 
      f8 f8 f8 f8 f4 d4
    }
  }
%{
\new TabStaff {
  \relative c {
    \tabFullNotation
    {
      <e' c g e c>8 <e c g e c>8 r8 <e cis a e a,>4 <e cis a e a,>8 <e cis a e a,>8 <b g d>8
      <e c g e c>8 <e c g e c>8 r8 <e cis a e a,>4 <e cis a e a,>8 <e cis a e a,>8 <b g d>8
      <e c g e c>8 <e c g e c>8 r8 <e cis a e a,>8 r8 <b g d>8 r8 <f' c a f>8( <f c a f>8)
      <f c a f>8 <f c a f>8 <f d a f>8 <f c a f>4 <fis d a d,>4 |
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <e cis a e a,>8 <e cis a e a,>8 r8 <e cis a e a,>8 <e cis a e a,>8 <e cis a e a,>8 r8 <e cis a e a,>8
      <e cis a e a,>8 <e cis a e a,>8 r8 <e cis a e a,>8 <e cis a e a,>8 <e cis a e a,>8 r8 <e cis a e a,>8
      <fis d b fis b,>8 <fis d b fis b,>8 r8 <fis d b fis b,>8 <fis d b fis b,>8 <fis d b fis b,>8 r8 <fis d b fis b,>8
      \set minimumFret = #5
      r8 b,,\6 d\5 e\5 <fis\5 b\4> <e\5 a\4> <fis\5 b\4> r8
      \set minimumFret = #0
      <fis' d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      \set minimumFret = #3
      r2 r4 r8 <fis\2 a,\4>8(  |
      <fis\2 a,\4>8) <fis\2 a,\4>8 <e\2 g,\4>8 <d\2 fis,\4>8 <e\2 g,\4>4 <d\2 fis,\4>4
      \set minimumFret = #0
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8 <fis d a d,>8 <fis d a d,>8 r8 <fis d a d,>8
      <e cis a e a,>8 <e cis a e a,>8 r8 <e cis a e a,>8 <e cis a e a,>8 <e cis a e a,>8 r8 <e cis a e a,>8
      <e cis a e a,>8 <e cis a e a,>8 r8 <e cis a e a,>8 <e cis a e a,>8 <e cis a e a,>8 r8 <e cis a e a,>8
      <fis d b fis b,>8 <fis d b fis b,>8 r8 <fis d b fis b,>8 <fis d b fis b,>8 <fis d b fis b,>8 r8 <fis d b fis b,>8
      \set minimumFret = #5
      r8 b,,\6 d\5 e\5 <fis\5 b\4> <e\5 a\4> <fis\5 b\4> r8
    }
  }
}

  \new Voice = "melody" {
    \relative c'' {
      s1 s1 s1 s1 s1 s1 s1 
      b8 d8 d8 d4 e8 d8 fis8 
      fis2  r2
    }
  }
  \new Lyrics {
    \lyricsto "melody" {
    Left a good job in the ci ty 
    Workin for the man ev'ry night and day 
    And I never lost one minute of sleepin' 
    Worryin bout the way things might have been 

    Big wheel keep on turnin
    Proud Mary keep on burnin
    Rollin, rollin, rollin on the river

    Cleaned a lot of plates in Memphis
    Pumped a lot of pain down in New Orleans
    But I never saw the good side of the city
    Til I hitched a ride on a river boat queen

    Big wheel keep on turnin
    Proud Mary keep on burnin
    Rollin, rollin, rollin on the river
    Rollin, rollin, rollin on the river

    If you come down to the river
    Bet you gonna find some people who live
    You don't have to worry cause you have no money
    People on the river are happy to give

    Big wheel keep on turnin
    Proud Mary keep on burnin
    Rollin', rollin', rollin on the river
    Rollin', rollin', rollin on the river

    Rollin', rollin', rollin on the river
    Rollin', rollin', rollin on the river
    Rollin', rollin', rollin on the river
    }
  }
%}
>>
