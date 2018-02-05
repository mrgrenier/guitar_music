% 
% Albeniz 
%
\version "2.18.0"
\header {
  title = "Albeniz"
  composer = "Asturias Isaac"
}

\layout { \override Voice.StringNumber.stencil = ##f }

music = \relative c' {
  \key c \major
  \time 3/4
<<
  {
    \voiceOne
   \override NoteColumn.force-hshift = #0
    e2\5 s4 e2\5 s4 e2\5 s4 a2\4 s4 e2\5 s4 e2\5 s4 e2\5 s4 a2\4 s4
    b,2\6 s4 b2\6 s4 b2\6 s4 b'2\4 s4 b,2\6 s4 b2\6 s4 b2\6 s4
    b'2\4 s4 s2. s2. s2. s2. e,,2\6 s4 s2. s2. s2. 
    < b' fis' b dis fis b>8 s8 s4 s4
    < b fis' b dis fis b>8 s8 s4 s4
    < b fis' b dis fis b>8 s8 s4 s4
   }
  \\
  {
   \override NoteColumn.force-hshift = #0
   \once \override NoteHead.transparent = ##t
   e16\5[ b'16 b16\4 b16] c16\4[ b16 a16\4 b16] b16\4[ b16 g16\5 b16]
   \once \override NoteHead.transparent = ##t
   e,16\5[ b'16 b16\4 b16] c16\4[ b16 a16\4 b16] b16\4[ b16 g16\5 b16]
   \once \override NoteHead.transparent = ##t
   e,16\5[ b'16 b16\4 b16] c16\4[ b16 a16\4 b16] b16\4[ b16 g16\5 b16]
   \once \override NoteHead.transparent = ##t
   a16\4[ b16 fis16\5 b16] g16\5[ b16 a16\4 b16] fis16\5[ b16 g16\5 b16] 
   \once \override NoteHead.transparent = ##t
   e,16\5[ b'16 b16\4 b16] c16\4[ b16 a16\4 b16] b16\4[ b16 g16\5 b16]
   \once \override NoteHead.transparent = ##t
   e,16\5[ b'16 b16\4 b16] c16\4[ b16 a16\4 b16] b16\4[ b16 g16\5 b16]
   \once \override NoteHead.transparent = ##t
   e,16\5[ b'16 b16\4 b16] c16\4[ b16 a16\4 b16] b16\4[ b16 g16\5 b16]
   \once \override NoteHead.transparent = ##t
   a16\4[ b16 fis16\5 b16] g16\5[ b16 e,16\5 b'16] d,16\6[ b'16 c,16\6 b'16] 
   \once \override NoteHead.transparent = ##t
   b,16\6[ b'16 b16\4 b16] c16\4[ b16 a16\4 b16] b16\4[ b16 fis16\5 b16] 
   \once \override NoteHead.transparent = ##t
   b,16\6[ b'16 b16\4 b16] c16\4[ b16 a16\4 b16] b16\4[ b16 fis16\5 b16] 
   \once \override NoteHead.transparent = ##t
   b,16\6[ b'16 fis16\5 b16] a16\4[ b16 b16\4 b16] c16\4[ b16 d16\4 b16] 
   \once \override NoteHead.transparent = ##t
   b16\4[ b16 c\4 b16] a16\4[ b16 b16\4 b16] g16\5[ b16 fis16\5 b16] 
   \once \override NoteHead.transparent = ##t
   b,16\6[ b'16 b16\4 b16] c16\4[ b16 a16\4 b16] b16\4[ b16 fis16\5 b16] 
   \once \override NoteHead.transparent = ##t
   b,16\6[ b'16 b16\4 b16] c16\4[ b16 a16\4 b16] b16\4[ b16 fis16\5 b16] 
   \once \override NoteHead.transparent = ##t
   b,16\6[ b'16 a16\4 b16] b16\4[ b16 c16\4 b16] d16\4[ b16 b16\4 b16] 
   \once \override NoteHead.transparent = ##t
   c16\4[ b16 a16\4 b16] b16\4[ b16 g16\4 b16] a16\4[ b16 fis16\4 b16] 
   \tuplet 3/2 { e,16\5[ b'16 b'16]} \tuplet 3/2 { b,16\3[ b16 b'16]}
   \tuplet 3/2 { c,16\3[ b16 b'16]} \tuplet 3/2 { a,16\4[ b16 b'16]}
   \tuplet 3/2 { b,16\3[ b16 b'16]} \tuplet 3/2 { g,16\4[ b16 b'16]}

   \tuplet 3/2 { e,,16\5[ b'16 b'16]} \tuplet 3/2 { b,16\3[ b16 b'16]}
   \tuplet 3/2 { c,16\3[ b16 b'16]} \tuplet 3/2 { a,16\4[ b16 b'16]}
   \tuplet 3/2 { b,16\3[ b16 b'16]} \tuplet 3/2 { g,16\4[ b16 b'16]}

   \tuplet 3/2 { e,,16\5[ b'16 b'16]} \tuplet 3/2 { b,16\3[ b16 b'16]}
   \tuplet 3/2 { c,16\3[ b16 b'16]} \tuplet 3/2 { a,16\4[ b16 b'16]}
   \tuplet 3/2 { b,16\3[ b16 b'16]} \tuplet 3/2 { g,16\4[ b16 b'16]}

   \tuplet 3/2 { a,16\4[ b16 b'16]} \tuplet 3/2 { fis,16\4[ b16 b'16]}
   \tuplet 3/2 { g,16\4[ b16 b'16]} \tuplet 3/2 { a,16\4[ b16 b'16]}
   \tuplet 3/2 { fis,16\4[ b16 b'16]} \tuplet 3/2 { g,16\4[ b16 b'16]}

   \tuplet 3/2 { e,,16\5[ b'16 b'16]} \tuplet 3/2 { b,16\3[ b16 b'16]}
   \tuplet 3/2 { c,16\3[ b16 b'16]} \tuplet 3/2 { a,16\4[ b16 b'16]}
   \tuplet 3/2 { b,16\3[ b16 b'16]} \tuplet 3/2 { g,16\4[ b16 b'16]}

   \tuplet 3/2 { e,,16\5[ b'16 b'16]} \tuplet 3/2 { b,16\3[ b16 b'16]}
   \tuplet 3/2 { c,16\3[ b16 b'16]} \tuplet 3/2 { a,16\4[ b16 b'16]}
   \tuplet 3/2 { b,16\3[ b16 b'16]} \tuplet 3/2 { g,16\4[ b16 b'16]}

   \tuplet 3/2 { e,,16\5[ b'16 b'16]} \tuplet 3/2 { b,16\3[ b16 b'16]}
   \tuplet 3/2 { c,16\3[ b16 b'16]} \tuplet 3/2 { a,16\4[ b16 b'16]}
   \tuplet 3/2 { b,16\3[ b16 b'16]} \tuplet 3/2 { g,16\4[ b16 b'16]}

   \tuplet 3/2 { a,16\4[ b16 b'16]} \tuplet 3/2 { fis,16\4[ b16 b'16]}
   \tuplet 3/2 { g,16\4[ b16 b'16]} \tuplet 3/2 { e,,16\5[ b'16 b'16]}
   \tuplet 3/2 { d,,16\5[ b'16 b'16]} \tuplet 3/2 { c,,16\6[ b'16 b'16]}

   s8 \tuplet 3/2 { b,16\4[ b16 b16]} \tuplet 3/2 { c16\4[ b16 b16]}
   \tuplet 3/2 { a16\4[ b16 b16]} \tuplet 3/2 { b16\4[ b16 b16]}
   \tuplet 3/2 { fis16\5[ b16 b16]}

   s8 \tuplet 3/2 { b16\4[ b16 b16]} \tuplet 3/2 { c16\4[ b16 b16]}
   \tuplet 3/2 { a16\4[ b16 b16]} \tuplet 3/2 { b16\4[ b16 b16]}
   \tuplet 3/2 { fis16\5[ b16 b16]}

   s8 \tuplet 3/2 { fis16\5[ b16 b16]} \tuplet 3/2 { a16\4[ b16 b16]}
   \tuplet 3/2 { b16\4[ b16 b16]} \tuplet 3/2 { c16\4[ b16 b16]}
   \tuplet 3/2 { d16\4[ b16 b16]}

  }
  \\
  {
  }
>> 
}

\new TabStaff {
    \tabFullNotation
    \transpose c' c 
    \music
}

