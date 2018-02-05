%
%
%
\version "2.19.15"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Life During Wartime"
  subtitle = ""
  arranger = ""
  composer = "Talking Heads"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
  \chordmode {
    s4 a4 c8 a4 s8 | 
    c8 a4. c8 a8 s4 |
    s8 a4 s8 c8 a8 g8:m a8 |
    s1 |
    s4 a4 c8 a4 s8 | 
    c8 a4. c8 a8 s4 |
    s8 a4 s8 c8 a8 g8:m a8 | 
    s1
    e1 e1 e1 e1
  }
}

music = {
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #5
  \repeat  volta 2 {
     r4^\markup { \bold "Verse" }
    <g' c>8\glissando<a d> <c e\2> d4 r8 |
    <c e\2>( f) e\2( f) <c e\2> d r4 |
    r8 <g, c>8\glissando<a d> r8 <c e\2> a r8 <a d>( |
    <a d>4) <e'\2 a>8 <e\2 a> <e\2 a>8 <e\2 a>8 <e\2 a>8 <e\2 a>8 |
     r4
    <g, c>8\glissando<a d> <c e\2> d4 r8 |
    <c e\2>( f) e\2( f) <c e\2> d r4 |
    r8 <g, c>8\glissando<a d> r8 <c e\2> a r8 <a d>( |
    <a d>4) <e'\2 a>8 <e\2 a> <e\2 a>8 <e\2 a>8 <e\2 a>8 <e\2 a>8 |
  }

  \set TabStaff.minimumFret = #0
  \repeat  volta 2 {
    <e,,\6 b' e gs b e>4^\markup { \bold "Chorus" }  <b'' e>8 <b e> <b e> <b e> <b e> <e, gs b e> |
    <e gs b e>4 <b' e>8 <b e> b, a g e (  |
   e4 ) <b'' e>8 <b e> <b e> <b e> r8 <e, gs b e> |
   <e gs b e>4 <b' e>8 <b e> b, a g e (  |
   e4 ) <b'' e>8 <b e> <b e> <b e> r8 <e, gs b e> |
     <e gs b e>4 <b' e>8 <b e> b, a g e  |
  }

}

bass_music = {
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
  \repeat  volta 3 {
    a4\6 g8\6 a\6 c a\6 r8 a\6  |
    c a\6 c a\6 c a\6 r8 g |
    a4\6 g8\6 a\6 c a\6 g\6 e |
    a4\6 e8 a4\6 e8 g e | 
    a4\6 g8\6 a\6 c a\6 r8 a\6 |
    c a\6 c a\6 c a\6 r8 g |
    a4\6 g8\6 a\6 c a\6 g\6 e |
    a4\6 d-.\5 c-. b-. |
  }

  \set TabStaff.minimumFret = #5
  \repeat  volta 2 {
    e4\5 b4\6 e8\5 b4\6 e8\5(  |
    e8\5) b\6 e,4 a8\6 b\6 d4\5 |
    e4\5 b4\6 e8\5 b4\6 e8\5(  |
    e8\5) b\6 e,4 a8\6 b\6 d4\5 |
    e4\5 b4\6 e8\5 b4\6 e8\5(  |
    e8\5) b\6 e,4 e'8\5 d8\5 a4\5 |
  }

}



<<


  \new TabStaff {
    \relative c {
      \tabFullNotation
      \music
    }
  }

  \new TabStaff {
    \relative c {
      \tabFullNotation
      \bass_music
    }
  }


  \new ChordNames {
    \chord_music
  }

  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c'' {
      \improvisationOn
      r4 a8 a8 c8 a4 r8  |
      c8 a8 a8 a8 c8 a8 r4 |
      r8 a8 a8 r8 c8 a8 g8 a8( | 
      a1) |
      r4 a8 a8 c8 a4 r8  |
      c8 a8 a8 a8 c8 a8 r4 |
      r8 a8 a8 r8 c8 a8 g8 a8( | 
      a1) | 
      e1 e1 e1 e1 e1 e1 
    }
  }

>>


\score {
  \unfoldRepeats \articulate
  \music
  \midi {
    \tempo 4 = 100
  }
}


