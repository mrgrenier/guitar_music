% 
% 
%
\version "2.19.15"
\include "english.ly"
\header {
  title = "Home on the Range"
  subtitle = ""
  arranger = ""
  composer = ""
}

\include "predefined-guitar-fretboards.ly"
\layout { indent = 0.0\cm }

% Make a blank new fretboard table
#(define custom-fretboard-table-one (make-fretboard-table))

% Make a new fretboard table as a copy of default-fret-table
#(define custom-fretboard-table-two (make-fretboard-table default-fret-table))

% Add a chord to custom-fretboard-table-one
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{d:7}
                        #guitar-tuning
                        "x;3-2;4-4;2-1;3-4;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{d':7}
                        #guitar-tuning
                        "x;x;7-1;7-1;7-1;8-2;"                        
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{g}
                        #guitar-tuning
                        "x;x;5;4;3;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{a:m7}
                        #guitar-tuning
                        "x;x;2;2;1;3;" 
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{g'}
                        #guitar-tuning
                        "x;x;5;4;3;3;"
                        
% Add a chord to custom-fretboard-table-two
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{d:7}
                        #guitar-tuning
                        "x;x;4;5;3;5;"
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{g}
                        #guitar-tuning
                        "x;x;x;4;3;3;"
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{g'}
                        #guitar-tuning
                        "x;x;x;7;8;7;"                    
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{c}
                        #guitar-tuning
                        "x;x;5;5;5;x;"
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{c'}
                        #guitar-tuning
                        "x;x;x;9;8;8;"                        
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{c':m}
                        #guitar-tuning
                        "x;x;x;8;8;8;"                        
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{g''}
                        #guitar-tuning
                        "x;x;x;12;12;10;"                        
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{a:7}
                        #guitar-tuning
                        "x;x;2;2;2;3;" 
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{a:m7}
                        #guitar-tuning
                        "x;x;5;5;5;5;" 
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{a':m7}
                        #guitar-tuning
                        "x;x;5;5;5;x;" 
\storePredefinedDiagram #custom-fretboard-table-two
                        \chordmode{e:m7}
                        #guitar-tuning
                        "x;x;2;4;3;3;" 
                             
\layout { \override Voice.StringNumber #'stencil = ##f }


<<
\new ChordNames {
  \time 3/4
  \key g \major
   \chordmode  {
    s2 d4:7 | 
    g g d:7 | 
    g2. |
    c4 c2 |
    c2.:m |
    g2. |
    a2.:7 |
    a4:m7 a4:m7 a4:m7 |
   d2.:7 |
   g4 g4 d4:7 |
   g2. |
   c4 c2 |
   c2.:m |
   g2. |
   d2:7 d4:7 |
   g2. |
   s2. |
   g2. |
   d2.:7 |
   g2. |
   s2. |
   e2.:m7 |
   a2.:7 |
   a4:m7 a4:m7 a4:m7 |
   d2.:7 |
   g4 g4 d4:7 |
   g2. |
   c4 c2 |
   c2.:m |
   g2. |
   d2:7 d4:7 |
   g2. |
   s2.
   } 
}

\new FretBoards {
  \time 3/4
  \key g \major
  s2
 \chordmode {
      \set predefinedDiagramTable = #custom-fretboard-table-one
      d4:7 | g
      \set predefinedDiagramTable = #custom-fretboard-table-two
      g d:7 |
      g'2. |
      c4 c'2 |
      c'2.:m |
      g''2. |
      a2.:7 |
      a4:m7 a':m7
      \set predefinedDiagramTable = #custom-fretboard-table-one
      a4:m7
      \set predefinedDiagramTable = #default-fret-table
      d2.:7
       \set predefinedDiagramTable = #custom-fretboard-table-one
      g4  
      \set predefinedDiagramTable = #custom-fretboard-table-two
      g4 d:7 |
      g'2. |
      c4 c'2 |
      c'2.:m |
      g'2.  |
      \set predefinedDiagramTable = #default-fret-table
      d2:7
      \set predefinedDiagramTable = #custom-fretboard-table-two
      d4:7 |
      \set predefinedDiagramTable = #custom-fretboard-table-one
      g'2. | s2. |
      \set predefinedDiagramTable = #custom-fretboard-table-two
       g''2. |
      \set predefinedDiagramTable = #custom-fretboard-table-one
      d'2.:7 |
      \set predefinedDiagramTable = #custom-fretboard-table-two
       g'2. |
       s2. |
       e2.:m7 |
       a2.:7 |
      a4:m7 a':m7
      \set predefinedDiagramTable = #custom-fretboard-table-one
      a4:m7
      \set predefinedDiagramTable = #default-fret-table
      d2.:7 |
      \set predefinedDiagramTable = #custom-fretboard-table-one
      g4
      \set predefinedDiagramTable = #custom-fretboard-table-two
      g d:7 |
      g'2. | 
      c4 c'2 |
      c'2.:m |
      g'2. |
      \set predefinedDiagramTable = #default-fret-table
      d2:7 
     \set predefinedDiagramTable = #custom-fretboard-table-two
      d4:7 |
      \set predefinedDiagramTable = #custom-fretboard-table-one
      g'2. | s2.
    }


}

\new TabStaff {
  \time 3/4
  \key g \major
  \stemDown

   \set TabStaff.minimumFret = #0

  \relative c {
    \tabFullNotation
    s2
    <c fs a d>4 |
    <g' b d>4 <b d g>4 <fs c' d a'>4 |
    <d' g b>2 g8\2 fs8\2 |
    <g,\4 c\3 e\2>4 <e'\3 g\2 c\1>4 c'\1 |
    <ef,\3 g\2 c\1>2 b'8\1 c8\1 |
    <g\3 b\2 d\1>2   g8\3 g8\3 |
    <e, a cs g'>4 fs'4 g4 |
    <g,\4 c\3 e\2 a\1>4 <g\4 c\3 e\2>4 <e\4 a\3 c\2 g'\1>4 |
    <d\4 a'\3 c\2 fs\1>2 d'4\2 |
    <g, b d>4 <b d g>4 <fs a d a'>4 |
    <d' g b>2  g8\2 fs8\2 |
    <g,\4 c\3 e\2>4 <e'\3 g\2 c\1>4 c'\1 |
    <ef,\3 g\2 c\1>2   c'8\1 c8\1 |
    <d, g b>4. a'8\2 g4\2
    <d,\4 a'\3 c\2 fs\1>4 g'4\1 <fs, c' d a'>4  |
    <g\4 b\3 d\2 g\1>2. ~ <g\4 b\3 d\2 g\1>2. |
    <g'\3 b\2 d\1>2. |
    <a,\4 d\3 fs\2 c'\1>4 b'4. a8 |
    <d, g b>2. ~ |
    <d g b>2 d8\3 d8\3 |
    <e, b' d g>2 g'8 g8 |
    <e, a cs g'>4. fs'8 g4 |
    <g,\4 c\3 e\2 a\1>4 <g\4 c\3 e\2>4 <e\4 a\3 c\2 g'\1>4 |
    <d\4 a'\3 c\2 fs\1>2 d'4\2 |
    <g, b d>4 <b d g>4 <fs c' d a'>4 |
    <d' g b>2  g8\2 fs8\2 |
    <g,\4 c\3 e\2>4 <e'\3 g\2 c\1>4 c'\1 |
    <ef,\3 g\2 c\1>2   c'8\1 c8\1 |
    <d, g b>4. a'8 g4
    <d,\4 a'\3 c\2 fs\1>4 g'4\1 <fs, c' d a'>4  |
    <g\4 b\3 d\2 g\1>2. ~ <g\4 b\3 d\2 g\1>2. |
  }
}
>>



