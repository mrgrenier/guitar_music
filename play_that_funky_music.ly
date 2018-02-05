%
%
%
\version "2.19.15"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Play That Funky Music"
  subtitle = ""
  arranger = ""
  composer = "Wild Cherry"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

chord_music = {
  \time 4/4
  \chordmode {
    e16:m7 s8 s8. s8 s8 fs8:m7 s8 f8:m7 |
    e16:m7 s8 s8. s8 s8 fs8:m7 s8 f8:m7 |
    e16:m7 s8 s8. s8 s8 fs8:m7 s8 f8:m7 |
    b1:m |
    g1:m7 |

  }
}

music = {
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #5
  \repeat  volta 12 {
    e,8-.^\markup { \bold "Main Theme" } e8-. e'-.\5 d-.\5 e-.\5 a,16\6(  b) r16 d\5(  e\5) r16 |
    e,8-. e8-. e'-.\5 d-.\5 e-.\5 a,16\6(  b) r16 d\5(  e\5) r16 |
  }
  \alternative {
    {e,8-. e8-. e'-.\5 d-.\5 e-.\5 a,16\6(  b) r16 d\5(  e\5) r16 |}
  }

  \set TabStaff.minimumFret = #5
  \repeat  volta 2 {
    d8-.\5^\markup { \bold "Break" }  d16\5(  e-.\5) r8 e-.\5 d8-.\5 d16\5(  e-.\5) r8 e-.\5  |
  }
  \set TabStaff.minimumFret = #3
  \repeat  volta 24 {
    g,8-.^\markup { \bold "Refrain" } g8-. g'-.\4 f-.\4 g-.\4 c,16\5(  d\5) r16 f\4(  g\4) r16 |
  }
  \set TabStaff.minimumFret = #0
  r1 | e4 d8 b8 d4 b8 a8 | b8 g8 a8 b8 a8 g8 e d'\5 |

}

bass_music = {
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
  \repeat  volta 12 {
    e,8 r4 d'8 e4-.  a,16  b16 d16  e16 |
    e,8 r4 d'8 e4-.  a,16  b16 d16  e16 |
  }
  \alternative {
    {e,8 r4 d'8 e4-.  a,16  b16 d16  e16 |}
  }

  \set TabStaff.minimumFret = #0
  \repeat  volta 2 {
    r2 r8 e, f fs  |
  }
  \set TabStaff.minimumFret = #3
  \repeat  volta 24 {
    g8 r4 g8 g4-.  c16 d16 f16 g16 |
  }
  \set TabStaff.minimumFret = #0
  r1 | e4 d8 b8 d4 b8 a8 | b8 g8 a8 b8 a8 g8 e d'\5 |

}

brass_section = {
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0
  \repeat  volta 12 {
    r4 e8-.\5 d-.\5 e4-.\5 <g\5 g'\3>16 <g\5 g'\3>16  <fs\5 fs'\3>16 r16 |
    <e\5 e'\3>16 <e\5 e'\3>8-. r16 r2. |
  }
  \alternative {
    { r4 <e' e'>8 <d d'>8 <e e'>4 r4 |}
  }
  \set TabStaff.minimumFret = #0
  \repeat  volta 2 {
    r1 |
  }
  \set TabStaff.minimumFret = #3
  \repeat  volta 24 {
    r1 |
  }
  \set TabStaff.minimumFret = #0
  r1 | r1 | r1 |
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

  \new TabStaff {
    \relative c {
      \tabFullNotation
      \brass_section
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
      e16 e8 r8. e8 e8 fs8 r8 f8 |
      e16 e8 r8. e8 e8 fs8 r8 f8 |
      e16 e8 r8. e8 e8 fs8 r8 f8 |
      r8 b16 r16 b16 b b r8. b8 b16 b b r16 |
      g16 g8 g16 g r g g r g g r g g r8 |
      r1 | r1 | r1 

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


