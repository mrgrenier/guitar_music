% 
% 
%
\version "2.19.15"
\include "english.ly"
\header {
  title = "Everybodys Cryin Mercy"
  subtitle = ""
  arranger = ""
  composer = "Mose Allison"
}

\include "predefined-guitar-fretboards.ly"
\layout { indent = 0.0\cm }

% Make a blank new fretboard table
#(define custom-fretboard-table-one (make-fretboard-table))

% Make a new fretboard table as a copy of default-fret-table
#(define custom-fretboard-table-two (make-fretboard-table default-fret-table))

% Add a chord to custom-fretboard-table-one
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{b:9}
                        #guitar-tuning
                        "x;2-2;1-1;2-3;2-3;x;"    
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{b:7}
                        #guitar-tuning
                        "7-1;x;7-2;8-4;7-3;x;"
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{bf:7}
                        #guitar-tuning
                        "6-1;x;6-2;7-4;6-3;x;"                       
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{ef:9}
                        #guitar-tuning
                        "x;6-2;5-1;6-3;6-3;x;"    
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{bf:9}
                        #guitar-tuning
                        "x;1-2;;1-3;1-3;x;"                       

\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{d:7+}
                        #guitar-tuning
                        "x;5;4;3;3;3;"  
                        
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{df:9}
                        #guitar-tuning
                        "x;4-2;3-1;4-3;4-3;x;"   
                        
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{g:7+}
                        #guitar-tuning
                        "3;x;3;4;4;x;"

\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c:7+}
                        #guitar-tuning
                        "8;x;8;9;9;x;"                        
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c:9}
                        #guitar-tuning
                        "x;3-2;2-1;3-3;3-3;x;"                       
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{f:7}
                        #guitar-tuning
                            "1-1;x;1-2;2-4;1-3;x;"              
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{ef}
                        #guitar-tuning
                            "x;6-1;8-2;8-2;8-2;x;"             
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{e}
                        #guitar-tuning
                            "x;7-1;9-2;9-2;9-2;x;"             
\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{f}
                        #guitar-tuning
                            "x;8-1;10-2;10-2;10-2;x;"             

\storePredefinedDiagram #custom-fretboard-table-one
                        \chordmode{c:7.9+}
                        #guitar-tuning
                            "x;3-2;2-1;3-3;4-4;x;"
                            
\layout { \override Voice.StringNumber #'stencil = ##f }

music =\chordmode {
    b2:7 bf:7 |
    ef:9 d:7+ |
    g:7+ c:9 |
    f:7 ef4 e  |
    \break
    f2 b:7 | bf:7 c:7+ |
    f:7 b:9 | bf:9  c:7.9+ |
    b2:7 bf:7 |
    ef:9 d:7+ |
    g:7+ c:9 |
    \break
    f1:7 |
    df2:9 c:9 |
    df:9 c:9 |
    df:9 c:9 |
    c:9 bf4:7 c:7+ |
}

<<
\new ChordNames {
  \time 4/4
  \key f \major
  \chordmode {
    \music
  }
}

\new FretBoards {
  \time 4/4
  \key f \major
  \chordmode {
     \set predefinedDiagramTable = #custom-fretboard-table-one
     \music
  }
}

  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c'' {
      \improvisationOn
     b4 b bf bf |
     ef ef d d |
     g g c c  |
     f f ef  e|
     \break
     f f b b |
     bf bf c c |
     f f b b | bf bf c c |
     b4 b bf bf |
     ef ef d d |
     g g c c  |
     \break
     f f f f |   
     d d c c |
     d d c c |
     d d c c |
     c c b c |
    }
  }
>>


