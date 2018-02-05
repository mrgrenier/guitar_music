%{
  Paint it Black
%}

\version "2.18.0"  % necessary for upgrading to future LilyPond versions.

\header{
  title = "Paint It Black"
  subtitle = "Guitar Tab Version"
  composer = "Rolling Stones"
}

music = \relative c' {
  \key d \minor
  \time 4/4
<<


  {
    \voiceOne
    s4 d'4 e4  f4 g4 f4 
    e4 d4 d4 cis4 d4( e4\2)
    \tuplet 3/2 { b8( cis d) } e4 \tuplet 3/2 { d8( cis b) } cis4
  } 
  \\
  {
    \voiceTwo
    s4 s8 d,4^\markup {
      \fret-diagram #"f:2;6-x;5-x;4-o;3-2-2;2-3-3;1-1-1;"
    }
    d4 d4 d4 d4
    s8 a'4 s8
    d,4 d4^\markup {
      \fret-diagram #"f:2;6-x;5-o;4-2-1;3-o;2-2-3;1-o;"
    }
  } 
>>
}
\new StaffGroup <<
  \new Staff {
    \clef "treble"
    \music
  }
  \new TabStaff {
    \transpose c' c
    \music
  }
>>



