%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Soldiers Song"
  subtitle = "The 3rd Thing"
  arranger = ""
  composer = ""
}

\layout {
  \context {
    \Score
    \omit BarNumber

  }
  indent = 0.0
  \override Voice.StringNumber.stencil = ##f

}

\include "predefined-guitar-fretboards.ly"
\layout { indent = 0.0\cm }

% Make a blank new fretboard table
#(define custom-fretboard-table-one (make-fretboard-table))

% Make a new fretboard table as a copy of default-fret-table
#(define custom-fretboard-table-two (make-fretboard-table default-fret-table))

% Add a chord to custom-fretboard-table-one
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{c:m}
#guitar-tuning
"8;10;10;8;8;8;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{bf}
#guitar-tuning
"6;8;8;7;6;6;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{f:7}
#guitar-tuning
"1;3;1;2;1;1;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{g:m}
#guitar-tuning
"3;5;5;3;3;3;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{af}
#guitar-tuning
"4;6;6;5;4;4;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{ef:maj7}
#guitar-tuning
"x;6;8;7;8;6;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{c}
#guitar-tuning
"8;10;10;9;8;8;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{f}
#guitar-tuning
"1;3;3;2;1;1;"


% Add a chord to custom-fretboard-table-two


music = {
  \numericTimeSignature
  \clef moderntab
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000

  \relative c {
    \override Score.RehearsalMark.stencil =
    #(make-stencil-boxer 0.15 0.3 ly:text-interface::print)
    \mark \default

    \override Beam.concaveness = #10000
    
    c4 c4 c4 c4 bf4 bf4 bf4 bf4 f4 f4 f4 f4
    \break
    \mark \default
    g4 g4 g4 g4 | af4 af4 af4 af4 | bf4 bf4 bf4 bf4 | ef4 ef4 ef4 ef4 |
    g4 g4 af4 af4 bf4 bf4 bf4 bf4
    ef4 ef4 bf4 bf4 c4 c4 c4 c4
    \break
    \mark \default
    c4 c4 c4 c4 c4 c4 c4 c4
    \break
    \mark \default
    c4 c4 c4 c4 af af af af f f f f    

  }
}

<<
  \new ChordNames {
    \time 4/4
    \key a \major
    \chordmode  {
      \set chordNameSeparator = \markup { "/" }
      c1:m bf f:7
      g1:m af bf ef:maj7
      g2:m af bf1
      ef2:maj7 bf c1:m
      c2 c:m c c:m 
      c1 af1 f1
      
      
    }
  }

  \new FretBoards {
    \time 4/4
    \key a \major
    \chordmode {
      \set predefinedDiagramTable = #custom-fretboard-table-one

      c1:m bf f:7
      g1:m af bf ef:maj7
      g2:m af bf1
      ef2:maj7 bf c1:m
      c2 c:m c c:m 
      c1 af1 f1

      
    }
  }


  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c {
      \improvisationOn
      \music
    }
  }
>>

\score {
  \unfoldRepeats \articulate
  \music
  \midi {
    \tempo 4 = 100
  }
}
