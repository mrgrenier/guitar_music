% 
% 
%
\version "2.18.2"
\include "english.ly"
\header {
  title = "Song For My Father"
  subtitle = "Guitar 1"
  arranger = ""
  composer = "Horace Silver"
}

\layout { \override Voice.StringNumber #'stencil = ##f }

\include "predefined-guitar-fretboards.ly"
\layout { indent = 0.0\cm }

% Make a blank new fretboard table
#(define custom-fretboard-table-one (make-fretboard-table))

% Make a new fretboard table as a copy of default-fret-table
#(define custom-fretboard-table-two (make-fretboard-table default-fret-table))

% Add a chord to custom-fretboard-table-one
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{f:m7}
                        #guitar-tuning
                        "x;8-1;10-3;8-1;9-2;8-1;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{f':m7}
                        #guitar-tuning
                        "1-1;x;1-2;1-2;1-2;1-2;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{df:7}
                        #guitar-tuning
                        "x;4;3;4;2;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{d,:m}
                        #guitar-tuning
                        "x;x;;2-2;3-3;1-1;"

\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{ef:7}
                        #guitar-tuning
                        "x;6;5;6;4;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{g'}
                        #guitar-tuning
                        "x;x;x;7;8;7;" 
                        
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c:7sus4}
                        #guitar-tuning
                        "x;3;5;3;6;3;"

\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c'}
                        #guitar-tuning
                        "x;x;x;9-2;8-1;8-1;"

% Add a chord to custom-fretboard-table-two
                             
\layout { \override Voice.StringNumber #'stencil = ##f }

music = {
  \time 4/4
%  \stemDown
  \set TabStaff.minimumFret = #3

  r2 r8 c'8\4 f8\3 af8\2 |
  \repeat volta 2 {
      c8 \tuplet 3/2 { df16[ c16 bf16]}  af8\2 bf8 ~ bf8 \tuplet 3/2 { cf16[ bf16 af16]} f8 af8 ~ |
      af8 \tuplet 3/2 { bf16[ af16 f16]} ef8 f8 ~ f8 \tuplet 3/2 { g16\2[ f16 ef16\3]} c8  ef8\3 ~ |
      ef1\3 ~ | ef2\3 r4 g,8\4[ fs8] |
      f8 df'8 ~ df2. |
      ef4 r4 f,4 g4\4 ~ |
      g1\4 |
  }
   \alternative {
       { r2 r8 c8\4 f8\3 af8\2 | }
       { r2 r8 ef8 ef8 ef8 | }
     }
   ef8 df4 f8 ~ f2 ~ |
   f2 r8 f8 f8 f8 | 
   f8 ef4 g8 ~ g2 ~ |
   g2 r8 ef8 ef8 ef8 |
   ef8 df4 g8 ~ g2 ~ |
   g4 r4 af4. bf8 ~ |
   bf1 ~ |
   bf2 r8 c,8\4 f8\3 af8\2 |
}


<<
\new ChordNames {
  \time 4/4
  \key af \major
   \chordmode  {
     s1
     \repeat volta 2 {
       f1:m7 | 
       f1:m7 | 
       ef1:7 | 
       ef1:7 |
       df1:7 |
       c1:7sus4 |
       f1:m7
     } 
     \alternative {
       { f1:m7 | }
       { f1:m7 | }
     }
     ef1:7 |
     ef1:7 |
     f1:m7 |
     f1:m7 |
     ef2:7 df2:7 | 
    c1:7 | 
    f1:m7 |
    f1:m7 
   } 
}

\new FretBoards {
  \time 4/4
  \key af \major
 \chordmode {
      \set predefinedDiagramTable = #custom-fretboard-table-one
      s1
     \repeat volta 2 {
       f1:m7 | 
       f1:m7 | 
       ef1:7 | 
       ef1:7 |
       df1:7 |
       c1:7sus4 |
       f1:m7
     } 
     \alternative {
       { f1:m7 | }
       { f1:m7 | }
     }
     ef1:7 |
     ef1:7 |
     f1:m7 |
     f1:m7 |
     ef2:7 df2:7 | 
    c1:7 | 
    f1:m7 |
    f1:m7 
 }
}

\new TabStaff {
  \time 4/4
  \key bf \major
  \stemDown
  \set TabStaff.minimumFret = #0
  \relative c {
    \tabFullNotation
    \music
  }
}
>>

\score {
  \music
  \midi {
    \context {
      \remove "Staff_performer"
    }
    \tempo 4 = 60
  }  
} 
