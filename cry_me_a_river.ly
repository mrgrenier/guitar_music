%
%
%
\version "2.18.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Cry me a River"
  subtitle = "A Major"
  arranger = ""
  composer = ""
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
\chordmode{fs:m7}
#guitar-tuning
"x;9;7;9;x;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{d:/fs}
#guitar-tuning
"x;9;7;7;x;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{fs:m6}
#guitar-tuning
"x;9;7;6;x;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{b:m7}
#guitar-tuning
"7;x;7;7;7;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{e:9}
#guitar-tuning
"x;7;6;7;7;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{a:maj7}
#guitar-tuning
"5;x;6;6;5;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{gs:m7}
#guitar-tuning
"4;x;4;4;4;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{cs:9}
#guitar-tuning
"x;4;3;4;4;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{cs:m7}
#guitar-tuning
"9;x;9;9;9;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{fs:7.9-}
#guitar-tuning
"x;9;8;9;8;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{b:7}
#guitar-tuning
"7;x;7;8;x;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{f:9}
#guitar-tuning
"x;8;7;8;8;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{e:7sus4}
#guitar-tuning
"x;7;7;7;5;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{a:6.9}
#guitar-tuning
"5;x;4;4;5;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{cs:7+}
#guitar-tuning
"9;x;9;10;10;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{gs:7}
#guitar-tuning
"4;x;4;5;x;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{as:m7.5-}
#guitar-tuning
"6;x;6;6;5;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{a:7.11+}
#guitar-tuning
"5;x;5;6;4;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{ds:7.9+}
#guitar-tuning
"x;6;5;6;7;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{cs:maj7}
#guitar-tuning
"x;4;6;5;6;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{gs:m11}
#guitar-tuning
"4;x;4;4;2;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{cs:7sus4}
#guitar-tuning
"9;x;9;11;x;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{cs:7}
#guitar-tuning
"9;x;9;10;x;x;"


% Add a chord to custom-fretboard-table-two

\layout { \override Voice.StringNumber #'stencil = ##f }

music = {
  \time 4/4
  \key a \major
  \stemDown
  \relative c {
    \override Beam.concaveness = #10000
    \set TabStaff.minimumFret = #4
    \repeat  volta 2 {
      gs''2\2 ~ gs8\2 fs cs a |
      gs fs ~ fs2. |
      r8 fs a fs' e4\2 e4\2 |
      cs2 ~ cs8 cs b\3 cs |
      fs4 ~ \tuplet 3/2 { fs8 g fs} g fs4. |
      r8 cs ~ \tuplet 3/2{ cs8 b\3 a } b\3 cs8 ~ cs 4 |
      r8 c\4 b\4 a b\4 a fs\5 a |
    }
    \alternative {
      { a1 }
      { a1 }
    }
    r8 cs d e\2 g,\4 a b\3 cs |
    d cs e\2 d ~ d4. cs8 |
    \set TabStaff.minimumFret = #7
    e\3 fs gs fs ~ fs4 e8\3 fs ~ |
    fs1 |
    \set TabStaff.minimumFret = #4
    r8 cs d e\2 g,\4 a b\3 cs |
    d cs e\2 d ~ d2 |
    r8 d16 cs d8 cs d cs e\2 cs |
    r8 d16 cs d8 cs d cs e\2 cs |

  }
}

<<
  \new ChordNames {
    \time 4/4
    \key a \major
    \chordmode  {
      \set chordNameSeparator = \markup { "/" }
      \repeat volta 2 {
        fs2:m7 d:/fs |
        fs:m6 fs:m7 |
        b:m7 e:9 |
        a:maj7 gs4:m7 cs:9 |
        cs2:m7 fs:7.9- |
        fs:m7 b:7 |
        f:9 e:7sus4 |
      }
      \alternative {
        {a:6.9 cs:7+}
        { a:6.9 gs:7}
      }
      cs:m7 as:m7.5- |
      a:7.11+ gs:7 |
      cs:m7 as:m7.5- |
      ds:7.9+ gs:7 |
      cs:m7 as:m7.5- |
      a:7.11+ gs:7 |
      cs1:maj7 |
      gs2:m11 cs4:7sus4 cs:7 |
    }
  }

  \new FretBoards {
    \time 4/4
    \key a \major
    \chordmode {
      \set predefinedDiagramTable = #custom-fretboard-table-one
      \repeat volta 2 {
        fs2:m7 d:/fs |
        fs:m6 fs:m7 |
        b:m7 e:9 |
        a:maj7 gs4:m7 cs:9 |
        cs2:m7 fs:7.9- |
        fs:m7 b:7 |
        f:9 e:7sus4 |
      }
      \alternative {
        {a:6.9 cs:7+}
        { a:6.9 gs:7}
      }
      cs:m7 as:m7.5- |
      a:7.11+ gs:7 |
      cs:m7 as:m7.5- |
      ds:7.9+ gs:7 |
      cs:m7 as:m7.5- |
      a:7.11+ gs:7 |
      cs1:maj7 |
      gs2:m11 cs4:7sus4 cs:7 |
    }
  }


  \new TabStaff {
    \tabFullNotation
    \music
  }
>>

\score {
  \unfoldRepeats \articulate
  \music
  \midi {
    \tempo 4 = 100
  }
}
