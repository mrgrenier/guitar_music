%
%
%
\version "2.23.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Spell Bound"
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
\chordmode{cs:m}
#guitar-tuning
"x;4;6;6;5;4;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{a}
#guitar-tuning
"5;7;7;6;5;5;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{gs:7}
#guitar-tuning
"4;6;4;5;4;4;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{b}
#guitar-tuning
"x;2;4;4;4;2;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{b'}
#guitar-tuning
"7;9;9;8;7;7;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{cs}
#guitar-tuning
"9;11;11;10;9;9;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{e}
#guitar-tuning
"x;7;9;9;9;7;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{d}
#guitar-tuning
"x;5;7;7;7;5;"


% Add a chord to custom-fretboard-table-two
chords_music = {
  \chordmode  {
    \set chordNameSeparator = \markup { "/" }
    \set predefinedDiagramTable = #custom-fretboard-table-one
    s4 cs:m s cs:m | s4 a s4 gs:7 
    s4 b s s | s4 cs:m s4 s
    s4 b s s | s4 cs:m s4 s
    a1 | gs1:7
    cs1 e4. b'2 s8 d4. a2 s8  b'1
    cs1 e4. b'2 s8 d4. a2 s8 gs1:7
  }
}

music = {
  \numericTimeSignature
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000

  \relative c {
    \override Score.RehearsalMark.stencil =
    #(make-stencil-boxer 0.15 0.3 ly:text-interface::print)
    \mark \default

    \override Beam.concaveness = #10000

    r4 cs4 \downbow \staccato r4 cs4 \downbow \staccato r4 a4 \downbow \staccato  r4 g4
    \break
    \mark \default
    r4 b4 \downbow \staccato r4 b4 \downbow \staccato r4 cs4 \downbow \staccato r4 cs4 \downbow \staccato
    r4 b4 \downbow \staccato r4 b4 \downbow \staccato r4 cs4 \downbow \staccato r4 cs4 \downbow \staccato
    a4 \downbow a4 \downbow a8 \downbow  a8 \upbow a8 \downbow  a8 \upbow | g4 \downbow \staccato s2. | 
    \break
    \mark \default
    c4 c4 c4 c4 e8 e8 r8 b2 r8 d8 d8 r8 a2 r8 b4 b4 b4 b4 
    c4 c4 c4 c4 e8 e8 r8 b2 r8 d8 d8 r8 a2 r8 b4 b4 b4 b4 
    \break

  }
}

<<
  \new ChordNames {
    \time 4/4
    \key a \major
    \chords_music
  }

  \new FretBoards {
    \time 4/4
    \key a \major
    \chords_music
  }

  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c {
      \improvisationOn
      \music
    }
    \new TabStaff {
      \tabFullNotation
      \clef moderntab
      \relative c {
       gs g fs2 \tuplet 3/2 {fs8 g gs}
      }
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
