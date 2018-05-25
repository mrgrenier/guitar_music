% 
% 
%
\version "2.18.2"
\include "english.ly"
\header {
  title = "San Antonio Rose"
  subtitle = ""
  arranger = ""
  composer = "Bob Wills and the Texas Playboys"
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
                        \chordmode{a}
                        #guitar-tuning
                        "x;x;7-3;6-2;5-1;5-1;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{a:maj7}
                        #guitar-tuning
                        "x;x;6-2;6-3;5-1;5-1;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{a:7}
                        #guitar-tuning
                        "x;x;5-1;6-2;5-1;5-1;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{a:7/cs}
                        #guitar-tuning
                        "x;4-1;5-2;4-3;5-4;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{d}
                        #guitar-tuning
                        "x;5-1;7-3;7-3;7-3;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{b}
                        #guitar-tuning
                        "x;x;9-3;8-2;7-1;7-1;"                        
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{e:7}
                        #guitar-tuning
                        "x;7-3;6-2;7-4;5-1;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{e:9/d}
                        #guitar-tuning
                        "x;5-1;6-3;6-4;5-2;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{a:/cs}
                        #guitar-tuning
                        "9-3;x;7-1;9-4;x;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{e:7/b}
                        #guitar-tuning
                        "7-3;x;6-2;7-4;5-1;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{a:6}
                        #guitar-tuning
                        "5-2;x;4-1;6-4;5-3;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{as:dim}
                        #guitar-tuning
                        "6-1;x;5-2;6-3;5-4;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{b:m7}
                        #guitar-tuning
                        "7-1;x;7-2;7-2;7-2;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{e:9}
                        #guitar-tuning
                        "x;7-1;6-2;7-3;7-4;x;"
                        


% Add a chord to custom-fretboard-table-two
                             
\layout { \override Voice.StringNumber #'stencil = ##f }


<<
\new ChordNames {
  \time 4/4
  \key bf \major
   \chordmode  {
     s1
     \repeat volta 2 {
       a2 a:maj7 | 
       a:7 a:7/cs | 
       d1 |
       b1 |
       e2:7 e:9/d |
       a:/cs e:7/b |
     } 
     \alternative {
        {a:6  as:dim  | b:m7 e:9 |}
        {a:6 e:7 | a:6 as:dim |}
 
     }   

   } 
}

\new FretBoards {
  \time 4/4
  \key bf \major
 \chordmode {
      \set predefinedDiagramTable = #custom-fretboard-table-one
      s1
     \repeat volta 2 {
       a2 a:maj7 | 
       a:7 a:7/cs | 
       d1 |
       b1 |
       e2:7 e:9/d |
       a:/cs e:7/b |
     } 
     \alternative  {
         {a:6 as:dim | b:m7 e:9 |}
         {a:6 e:7 | a:6 as:dim |}
     }

 }
}

\new TabStaff {
  \time 4/4
  \key a \major
  \stemDown
  \set TabStaff.minimumFret = #0
  \relative c {
    \tabFullNotation
    s2 <e a>4 <a cs> 4 
    \repeat volta  2 {
      <cs e>2. <a cs>4 |
      <e a>2 <cs e>4 <a d>4 |
      <fs' a>2. <d a'>4 |
      <b ds>1 |
      <gs' b>2. <fs a>4 |
      <e gs>2 <e gs>4 <f>4 |
    }
    \alternative {
      { <fs cs'\3>2 fs4. <g\4 cs\3>8 |  <fs>2 e4 a4 |}
      { }
    }
  }
}
>>