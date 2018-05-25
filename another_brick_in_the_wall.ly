%
%
%
\version "2.18.2"
\include "english.ly"
\header {
  title = "Another Brick in the Wall part 2"
  subtitle = "Guitar 1"
  arranger = ""
  composer = "Pink Floyd"
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
  \set TabStaff.minimumFret = #5
  \relative c {
    \tabFullNotation
    \repeat volta 3 {
      <d\5 a'\4 d\3 f\2 a\1>8 <d\5 a'\4 d\3 f\2 a\1>16 <d\5 a'\4 d\3 f\2 a\1>16 r8 d8\5 <a'\4 d\3 f\2 a\1>8 r8 <a\4 d\3 f\2 a\1>8 r8 |
      <d,\5 a'\4 d\3 f\2 a\1>8. <d\5 a'\4 d\3 f\2 a\1>16 r8 <d\5 a'\4>8\5 <a'\4 d\3 f\2 a\1>8 r8 <a\4 d\3 f\2 a\1>8 r8 |
      <d,\5 a'\4 d\3 f\2 a\1>8. <d\5 a'\4 d\3 f\2 a\1>16 r8 <d\5 a'\4>16  <d\5 a'\4>16 <a'\4 d\3 f\2 a\1>16 <a\4 d\3 f\2 a\1>16 \deadNotesOn <a\4 d\3 f\2 a\1>16 <a\4 d\3 f\2 a\1>16 \deadNotesOff <a\4 d\3 f\2 a\1>16 <a\4 d\3 f\2 a\1>16 r8 |
      <d,\5 a'\4 d\3 f\2 a\1>8. <d\5 a'\4 d\3 f\2 a\1>16 r8 <d\5 a'\4>16  <d\5 a'\4>16 <a'\4 d\3 f\2 a\1>16 <a\4 d\3 f\2 a\1>16 \deadNotesOn <a\4 d\3 f\2 a\1>16 <a\4 d\3 f\2 a\1>16 \deadNotesOff <a\4 d\3 f\2 a\1>16 <a\4 d\3 f\2 a\1>16 r8 |
    }
     <d,\5 a'\4 d\3 f\2 a\1>8 <d\5 a'\4 d\3 f\2 a\1>16 <d\5 a'\4 d\3 f\2 a\1>16 r8 d8\5 <a'\4 d\3 f\2 a\1>8 r8 <a\4 d\3 f\2 a\1>8 r8 |
     <d,\5 a'\4 d\3 f\2 a\1>8. <d\5 a'\4 d\3 f\2 a\1>16 r8 <d\5 a'\4>8\5 <a'\4 d\3 f\2 a\1>8 r8 <a\4 d\3 f\2 a\1>8 r8 |

   \repeat volta 4 { <d\3 g\2 b\1>16 <d\3 g\2 b\1> <d\3 g\2 b\1>  <d\3 g\2 b\1> <d\3 g\2 b\1>16 <d\3 g\2 b\1> <d\3 g\2 b\1>  <d\3 g\2 b\1> <d\3 g\2 b\1>16 <d\3 g\2 b\1> <d\3 g\2 b\1>  <d\3 g\2 b\1> <d\3 g\2 b\1>16 <d\3 g\2 b\1> <d\3 g\2 b\1>  <d\3 g\2 b\1> | }
    <d\3 f\2 a\1>8. <d\3 f\2 a\1>16 r4 r8 <f\3 a\2 d\1>8 r8 <e\3 g\2 c\1>8 |
     <f\3 a\2 d\1>8. <f\3 a\2 d\1>16 r8 <e\3 g\2 c\1>8 <e\3 g\2 c\1>16 r <d\3 g\2 b\1> <d\3 g\2 b\1> <d\3 g\2 b\1> r <c\3 f\2 a\1>8 |

     <c\3 f\2 a\1>16 <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1>4 |
     <e\3 g\2 c\1>16 <e\3 g\2 c\1>  <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1>4 |
     \set TabStaff.minimumFret = #0
     <d,\4 g\3 d'\2 f\1>16( a'8\3) <d,\4 a'\3 d\2 f\1>16 <d\4 a'\3 d\2 f\1>16 r16 <d\4 a'\3>8 <d\4 a'\3 d\2 f\1>16 <d\4 a'\3 d\2 f\1>16 r8 <d\4 a'\3 d\2 f\1>16 <d\4 a'\3 d\2 f\1>16 r8
     <d\4 g\3 d'\2 f\1>16( a'8\3) <d,\4 a'\3 d\2 f\1>16 <d\4 a'\3 d\2 f\1>16 r16 <d\4 a'\3>8 <d\4 a'\3 d\2 f\1>16 <d\4 a'\3 d\2 f\1>16 r8 <d\4 a'\3 d\2 f\1>16 <d\4 a'\3 d\2 f\1>16 r8
     <c'\3 f\2 a\1>16 <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1> <c\3 f\2 a\1>4 |
     <e\3 g\2 c\1>16 <e\3 g\2 c\1>  <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1> <e\3 g\2 c\1>4 |
     <d,\4 a'\3 d\2 f\1>16 r8. r4 r2 |
  }
}
>>
