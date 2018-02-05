% 
% 
%
\version "2.19.15"
\include "english.ly"
\header {
  title = "Walking On The Moon"
  subtitle = "Guitar 1"
  arranger = ""
  composer = "The Police"
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
                        \chordmode{d:m}
                        #guitar-tuning
                        "x;5-1;7-3;7-4;6-2;5-1;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{d':m}
                        #guitar-tuning
                        "x;x;7-3;7-4;6-2;5-1;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{d'':m}
                        #guitar-tuning
                        "x;x;x;10-3;10-3;10-3;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{d,:m}
                        #guitar-tuning
                        "x;x;;2-2;3-3;1-1;"

\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{g}
                        #guitar-tuning
                        "3;x;5;4;3;3;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{g'}
                        #guitar-tuning
                        "x;x;x;7;8;7;" 
                        
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{f}
                        #guitar-tuning
                        "1-1;3-3;3-4;2-2;1;1;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{f'}
                        #guitar-tuning
                        "x;x;x;5-1;6-2;5-3;"

\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c}
                        #guitar-tuning
                        "x;3-3;2-2;0;1-1;0;"

\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c'}
                        #guitar-tuning
                        "x;x;x;9-2;8-1;8-1;"

% Add a chord to custom-fretboard-table-two
                             
\layout { \override Voice.StringNumber #'stencil = ##f }


<<
\new ChordNames {
  \time 4/4
  \key bf \major
   \chordmode  {
     \repeat volta 3 {
       d1:m | 
       d1:m | 
       d1:m | 
       d1:m |
     } 
    d1:m | 
    d1:m | 
    \repeat volta 4 { g'1 | }
     d'2:m s8 d''8:m s8 c'8 |
     d''4:m s8 c'8. s16 g'8 s8 f'8 |
     f'1 |
     c'1 |
     d,1:m |
     d,1:m |
     f'1 |
     c'1 |
     d,1:m |

   } 
}

\new FretBoards {
  \time 4/4
  \key bf \major
 \chordmode {
      \set predefinedDiagramTable = #custom-fretboard-table-one
      \repeat volta 3 {
        d1:m | 
        d1:m | 
        d1:m | 
        d1:m |
      } 
    d1:m | 
    d1:m | 
    \repeat volta 4 { g'1 | }
    d'2:m s8 d''8:m s8 c'8 |
    d''4:m s8 c'8. s16 g'8 s8 f'8 |
    f'1 |
    c'1 |
    d,1:m |
    d,1:m |
    f'1 |
    c'1 |
    d,1:m |

 }
}

\new TabStaff {
  \time 4/4
  \key bf \major
  \stemDown
  \set TabStaff.minimumFret = #0
  \relative c {
    \tabFullNotation
    \repeat volta 3 {
      r2 c8 r8 \tuplet 3/2 { c8 r d\5 } r1 r2 f8 r \tuplet 3/2 { e8 r c } r1
    }
    r4. r16 d16 g16( g8) g16 g4 |
    bf,4 bf bf ~ bf8 c8 |
    f,8. f16 f8 f8 f4 ~ f8 g8 |
    c4 c4 c4 ~ c8 g'8 | 
    g,8. g16 g8 g8 g4 ~ g8 a8 |
  }
}
>>