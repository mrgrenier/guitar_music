\version "2.18.2"
\include "english.ly"
\header {
  title = "Stolen Moments"
  subtitle = ""
  arranger = ""
  composer = "Oliver Nelson"
}

\paper {
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}
% Make a blank new fretboard table
#(define custom-fretboard-table-one (make-fretboard-table))

% Make a new fretboard table as a copy of default-fret-table
#(define custom-fretboard-table-two (make-fretboard-table default-fret-table))

% Add a chord to custom-fretboard-table-one
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{d:m7}
                        #guitar-tuning
                        "x;x;7-4;5-1;6-2;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c:m7}
                        #guitar-tuning
                        "x;x;5-4;3-1;4-2;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c:m6}
                        #guitar-tuning
                        "x;3;5;x;4;5;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{ef:maj7}
                        #guitar-tuning
                        "x;x;8-1;7-2;8-3;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{f:m7}
                        #guitar-tuning
                        "1;x;1;1;1;1;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{f:m6}
                        #guitar-tuning
                        "x;x;3;1;3;1;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{d:m11}
                        #guitar-tuning
                        "x;5;5;5;6;5;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{ef:m11}
                        #guitar-tuning
                        "x;6;6;6;7;6;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{e:m11}
                        #guitar-tuning
                        "x;7;7;7;8;7;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{f:m11}
                        #guitar-tuning
                        "x;8;8;8;9;8;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{fs:m11}
                        #guitar-tuning
                        "x;9;9;9;10;9;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{ds:dim7}
                        #guitar-tuning
                        "x;x;4;5;4;5;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c:/e}
                        #guitar-tuning
                        "x;7;10;9;8;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{g:7.5+}
                        #guitar-tuning
                        "3;x;3;4;4;x;"

\include "predefined-guitar-fretboards.ly"
\layout { indent = 0.0\cm }
\layout { \override Voice.StringNumber #'stencil = ##f }

guitar = \relative c {
   \stemUp
 \set midiInstrument = #"baritone sax"
  r8 <g'\4 bf\3 ef\2>4.  ~ <g\4 bf\3 ef\2>2 |
  r8 <a\4 c\3 f\2>4. ~ <a\4 c\3 f\2>2 |
  r8 <bf\4 d\3 g\2>4. ~ <bf\4 d\3 g\2>2 |
  r8 <a\4 c\3 f\2>4. ~ <a\4 c\3 f\2>2 |
  r8 g8\4 bf8 d8 r8 c4\3 bf8 |
  c8\3 a8\4 ~ a8\4 f16 c16 ef8\5 g4.\4 |
  r8 g8\4 bf8 d8 r8 c4\3 bf8 |
  c8\3 a4.\4 g2\4 |
  r8 af8\4 c8\3 ef8\2 r8 d4\2 c8\3 |
  d8 bf4. f8 af4.\4  |
  r8 ef8\5 g\4 bf\4 r8 a4\4 g8\4 |
  a8\4 f4.\5 ef4\5 g8\4 bf8 |
  c8\3 ef\2 c\3 c\3 ~ c\3 ef\2 c\3 c\3 ~ |
  c\3 ef\2 c\3 c\3 ~ c\3 ef\2 c\3 c\3 ~ |
  c\3 ef\2 c\3 c\3 ~ c\3 ef\2 c\3 c\3 ~ |
  c\3 ef\2 c\3 c\3 ~ c\3 ef,\4 c\5 c\5 ~ |
  c\5 d\4 c\5 c\5 ~ c\5 d\4 c\5 c\5 ~ |
  c\5 d16 ef c8 c ~ c g'\4 a\4 g\4 bf4\4 a8\4 g\4 ~ g4.\4 g8\4 ~ |
  g1\4 |

  \set TabStaff.minimumFret = #7
  r8 g'8\2 bf8 d8 r8 c4 bf8 |
  c8 a8 ~ a8 f16 c16 ef8 g4. |
  r8 g8 bf8 d8 r8 c4 bf8 |
  c8 a4. g2 |
  r8 af8 c8 ef8 r8 d4 c8 |
  d8 bf4. f8 af4.  |
  r8 ef8 g bf r8 a4 g8 |
  a8 f4. ef4 g8 bf8 |
  c8 ef c c ~ c ef c c ~ |
  c ef c c ~ c ef c c ~ |
  c ef c c ~ c ef c c ~ |
  c ef c c ~ c ef, c c ~ |
  c d c c ~ c d c c ~ |
  c d16 ef c8 c ~ c g' a g bf4 a8 g ~ g4. g8 ~ |
  g1 |
}

<<
\new ChordNames {
  \time 4/4
  \key ef \major
   \chordmode  {
    c1:m7 |
    d1:m7 |
    ef:maj7 |
    d:m7 |
    c:m7 |
    c:m6 |
    c:m7 |
    c:m6 |
    f:m7 |
    f:m6 |
    c:m7 |
    c:m6 |
    d4.:m11 ef2:m11 e8:m11 |
    s4. f2:m11 fs8:m11 |
    s4. f2:m11 e8:m11 |
    s4. ef2:m11 d8:m7 |
    s2 s8 ds4.:dim7  |
    c2:/e f2:m7 |
    c1:m7 |
    g1:7.5+ |

   }
}

\new FretBoards {
  \time 4/4
  \key ef \major
 \chordmode {
      \set predefinedDiagramTable = #custom-fretboard-table-one
      c1:m7 |
      d1:m7 |
      ef:maj7 |
      d:m7 |
      c:m7 |
      c:m6 |
      c:m7 |
      c:m6 |
      f:m7 |
      f:m6 |
      c:m7 |
      c:m6 |
      d4.:m11 ef2:m11 e8:m11 |
      s4. f2:m11 fs8:m11 |
      s4. f2:m11 e8:m11 |
      s4. ef2:m11 d8:m7 |
      s2 s8 ds4.:dim7  |
      c2:/e f2:m7 |
      c1:m7 |
      g1:7.5+ |
     \set predefinedDiagramTable = #default-fret-table

    }
}

\new TabStaff {
  \relative c {
    \tabFullNotation
    \guitar
  }
}
>>

\score {
  <<
  \guitar
  >>
  \midi {
    \context {
      \remove "Staff_performer"
    }
    \tempo 4 = 130

  }
}
