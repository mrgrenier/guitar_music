%
%
%
\version "2.19.82"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "It's Your Thing"
  subtitle = "Funk-n-A"
  arranger = ""
  composer = "Isley Brothers"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"

guitar_riff_a = {
  <c f>8
  \deadNotesOn <c f a>16 <c f a>16] \deadNotesOff
  <c ds>8
  \deadNotesOn <c f a>16 <c f a>16 \deadNotesOff
  d16 r16 \deadNotesOn <c f a>16 \deadNotesOff r16
  \deadNotesOn <c f a>16 <c f a>16 <c f a>16 <c f a>16 \deadNotesOff |
  <c f>16 <c f>16
  \deadNotesOn <c f a>16 \deadNotesOff <c f>16
  \deadNotesOn <c f a>16 \deadNotesOff c16 ds8 d16 r16
  \deadNotesOn <c f a>16 \deadNotesOff  r16
  \deadNotesOn <c f a>16 <c f a>16 <c f a>16 <c f a>16 \deadNotesOff |
}

guitar_riff_a_low = {
  <c, f>8
  \deadNotesOn <c f a>16 <c f a>16] \deadNotesOff
  <c ds>8
  \deadNotesOn <c f a>16 <c f a>16 \deadNotesOff
  d16 r16 \deadNotesOn <c f a>16 \deadNotesOff r16
  \deadNotesOn <c f a>16 <c f a>16 <c f a>16 <c f a>16 \deadNotesOff |
  <c f>16 <c f>16
  \deadNotesOn <c f a>16 \deadNotesOff <c f>16
  \deadNotesOn <c f a>16 \deadNotesOff c16 ds8 d16 r16
  \deadNotesOn <c f a>16 \deadNotesOff  r16
  \deadNotesOn <c f a>16 <c f a>16 <c f a>16 <c f a>16 \deadNotesOff |
}

guitar_verse_a = {
  <df' f bf>16 <df f bf>16 <df f bf>16 <c ef a>16( <c ef a>16) r16 r16
}

guitar_verse_b = {
  <b\5 d\4 af'\3 b\2>16 <c\5 ef\4 a\3 c\2>16 <c\5 ef\4 a\3 c\2>16 <c\5 ef\4 a\3 c\2>16
  <c\5 ef\4 a\3 c\2>16 r16 \deadNote <c\5 ef\4 a\3 c\2>16
}

guitar_verse_c = {
  <b\5 d\4 af'\3 b\2>16 <c\5 ef\4 a\3 c\2>16 <c\5 ef\4 a\3 c\2>16 <c\5 ef\4 a\3 c\2>16
  <c\5 ef\4 a\3 c\2>16 <c\5 ef\4 a\3 c\2>16 \deadNote <c\5 ef\4 a\3 c\2>16
}

guitar_verse_d = {
  <g'\3 \deadNote b ef\1>( <g\3 \deadNote b ef\1>) <f\3 \deadNote b d\1>16
  <f\3 \deadNote b d\1>16 <f\3 \deadNote b d\1>16 <f\3 \deadNote b d\1>16
  <ef\3 \deadNote b c'\1>16 <ef\3 \deadNote b c'\1>16 <ef\3 \deadNote b c'\1>16 |
}

guitar_verse_e = {
  <c' \deadNote ef a>16 <c \deadNote ef a>16
  \glissando <bf\3  g'\1>16 <bf \deadNote d g>16 <a \deadNote c f>16 <a \deadNote c f>16
  <g \deadNote bf ef>16 <g \deadNote bf ef>16 \deadNote <g,\3  bf ef>16
}

guitar_riff_b = {
  \guitar_verse_a
  \guitar_verse_d

  \guitar_verse_c
  \guitar_verse_e

  \guitar_verse_c
  \guitar_verse_d

  \guitar_verse_b
  \guitar_verse_e

  \guitar_verse_b
  \guitar_verse_d

  \guitar_verse_c
  \guitar_verse_e

  \guitar_verse_c
  \guitar_verse_d

  \guitar_verse_c
  \guitar_verse_e

}


bass_riff_a = {
  f8 r16 c16[ f,8] r8 bf8 r4. |
  f'16 f8 f8 c16 f,8 bf8 d ef16 ef8 e16 |
}

bass_riff_b = {
  f4 f8. c16 f16 c16 f8 a,16 bf8 c16 |
}

trumpet_riff_a = {
  r2 r8 a16 gs16 a16 gs16 a16 r16 |
}

trumpet_riff_b = {
  r4. ef16 c16 ef16 f16 r16 gs16 r16 gs16 f16 r16 |
}

trumpet_music = {
  \time 4/4
  \tabFullNotation
  r1 r1 r1 r1
  \trumpet_riff_a
  r1
  \trumpet_riff_a
  r1 r1
  \trumpet_riff_b
  \trumpet_riff_a
  \trumpet_riff_b

}


music = {
  \tabFullNotation
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000
  \set TabStaff.minimumFret = #0

  \guitar_riff_a
  \guitar_riff_a
  \guitar_riff_a


  \guitar_riff_a
  \guitar_riff_a
  \guitar_riff_a

  \guitar_riff_b

  \guitar_riff_a_low
  \guitar_riff_a
  \guitar_riff_a
  \guitar_riff_a

  \guitar_riff_b

  \guitar_riff_a_low
  \guitar_riff_a
  \guitar_riff_a
  \guitar_riff_a

  \guitar_riff_b

  \guitar_riff_a_low
  \guitar_riff_a
  \guitar_riff_a
  \guitar_riff_a
}

bass_music = {
  \tabFullNotation
  \stemDown

  \set TabStaff.minimumFret = #0
  \relative c, {
    \bass_riff_a    \bass_riff_a
    \bass_riff_a    \bass_riff_a
    \bass_riff_a    \bass_riff_a

    \bass_riff_b    \bass_riff_b
    \bass_riff_b    \bass_riff_b
    \bass_riff_b    \bass_riff_b
    \bass_riff_b    \bass_riff_b

    \bass_riff_a    \bass_riff_a
    \bass_riff_a    \bass_riff_a

    %bridge
    \bass_riff_b   \bass_riff_b
    \bass_riff_b   \bass_riff_b
    \bass_riff_b   \bass_riff_b
    \bass_riff_b   \bass_riff_b

    %outro
    \bass_riff_a   \bass_riff_a
    \bass_riff_a   \bass_riff_a

    \bass_riff_b   \bass_riff_b
    \bass_riff_b   \bass_riff_b
    \bass_riff_b   \bass_riff_b
    \bass_riff_b   \bass_riff_b

    \bass_riff_a   \bass_riff_a
    \bass_riff_a   \bass_riff_a


  }
}


<<
  \new TabStaff {
    \relative c {
      \music
    }
  }

  \new TabStaff \with {
    stringTunings = #bass-tuning
  }{
    \relative c {
      \bass_music
    }
  }

  \new TabStaff {
    \relative c'' {
      \trumpet_music
    }
  }


>>


\score {
  \unfoldRepeats \articulate
  \bass_music
  \midi {
    \tempo 4 = 94
  }
}


