% 
% Estudio II (Fernando Sor)
%
\version "2.14.2"
\header {
  title = "Estudio 2"
  composer = "Fernando Sor"
}
music = \relative c' {
  \key c \major
  \time 2/4
<<
  {
    \voiceOne
   \override NoteColumn #'force-hshift = #0
    e'4 c g' e8 c d4 e8 d d4 c4 
    e4 c g' e8 c b4 c8 e d2 e4 c 
    g' e8 c d4 e8 d d4 c e c g' e8 c 
    b4 c8 e d4 r d d d8 c e g
    g f f f f4 e d d d8 c e g
    f d e c b16 g a g c cis d dis e4 c g' e8 c d4 e8 d
    d4 c cis cis e8 d f d d c c b c4 r
   }
  \\
  {
    \stemDown
    \override NoteColumn #'force-hshift = #0.5
    c,2 c2 c2 c2 
    c2 c2 d8\5 f8 e8 c8 b8 g8 a8  b8 c2
    c2 c2 c2 c2 c2
    d8\5 f8 e8 c8 b4 g8 g'8 b,2 c2
    d4 s c2 b2 c2
    d8 b8 c8 a8 g4 r4 c2 c2 gis2
    a2 g2 f2 g2 c4 c8 r8
  }
  \\
  {
   \override NoteColumn #'force-hshift = #0.5
   \set fingeringOrientations = #'(left) 
   \once \override NoteHead #'transparent = ##t
   \stemUp c16-3 g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' e g \stemDown e g e g 
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' f g \stemDown f g f g 
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp d\5[ g]  f[ g]  e[ g]  c,[ g']
   \once \override NoteHead #'transparent = ##t
   \stemUp b,[ g']  g,[ g']  a,[ g'] b,[ g']
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,   g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp d\5[ g]  f[ g]  e[ g]  c,[ g']
   \once \override NoteHead #'transparent = ##t
   \stemUp b, g' d b  s4
   \once \override NoteHead #'transparent = ##t
   \stemUp b16 g' f g  \stemDown f g f g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,[  g'] e[ g] \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp d[  b'] \stemDown g[ b] b,[ d'] g,[ d']
   \once \override NoteHead #'transparent = ##t
   \stemDown c,   d' g, d' \stemDown g, c e, g
   \once \override NoteHead #'transparent = ##t
   \stemUp b,16 g' f g  \stemDown f g f g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,[  g'] e[ g] \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp d[  g] b,[ g']  c,[ g'] a,[ g']
   s2
   \once \override NoteHead #'transparent = ##t
   \stemUp c,16  g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,16  g' e g \stemDown e g e g
   \once \override NoteHead #'transparent = ##t
   \stemUp gis,16  b'\3 f b\3 \stemDown f b\3 f b\3
   \once \override NoteHead #'transparent = ##t
   \stemUp a,16  a' e a \stemDown e a e a
   \once \override NoteHead #'transparent = ##t
   \stemUp g,16  bes' e, bes' \stemDown e, bes' e, bes'
   s16 a f a f a f a 
   \once \override NoteHead #'transparent = ##t
   \stemUp g,[  g'] \stemDown e g d g f g
   \once \override NoteHead #'transparent = ##t
   \stemUp c,16[  g'] e[ g] s4
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

\score {
<<
 \music
>>

  \midi {
  }
}
