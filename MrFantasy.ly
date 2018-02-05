
\version "2.19.15"

\header{
  title = "Dear Mr. Fantasy"
  subtitle = "Guitar Tab Version"
}

music = \relative c' {
  \key g \major
  \times 2/3 {e,,8( g a)}
  c4 d8 c4 a
  < a e' a cis e >4
  < b \deadNote d b'\1 >
  < c \deadNote e c'\1 >
  \deadNotesOn
  \times 2/3 { g8 b e }
  \deadNotesOff
  < a,\3 c\2 e\1 >1
}
\new StaffGroup <<
  \new Staff {
    \clef "treble_8"
    \music
  }
  \new TabStaff {
    \music
  }
>>
