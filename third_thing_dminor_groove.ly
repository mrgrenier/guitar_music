%
%
%
\version "2.24.3"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Dminor Groove"
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
\chordmode{d:m}
#guitar-tuning
"x;5;7;7;6;5;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{bf}
#guitar-tuning
"x;x;8;7;6;x;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{f'}
#guitar-tuning
"x;8;7;5;6;5;"
\storePredefinedDiagram #custom-fretboard-table-one
\chordmode{f''}
#guitar-tuning
"x;x;10;x;10;x;"
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

music_rhythm = {
  \numericTimeSignature
  \clef moderntab
  \time 4/4
  \stemDown
  \override  Beam.concaveness = #10000
  \relative c {
    d4 d4 d4 d4 f4 f4 f4 f4
  }
}

music = {
  \numericTimeSignature
  \clef moderntab
  \time 4/4
  \stemDown
  \override Beam.concaveness = #10000

  \relative c' {
    \set TabStaff.minimumFret = #5
    <a d f>8 \acciaccatura <g c e\2>8 <a d f>8 \acciaccatura <g c e\2>8 <a d f>8 \acciaccatura <g c e\2>8 <a d f>8 ~ <a d f>4. bf8 \glissando |
    \set TabStaff.minimumFret = #8
    <c a'>2. <bf g'>4
    \set TabStaff.minimumFret = #5
    <a d f>8 \acciaccatura <g c e\2>8 <a d f>8 \acciaccatura <g c e\2>8 <a d f>8 \acciaccatura <g c e\2>8 <a d f>8 ~ <a d f>4. bf8 \glissando |
    \set TabStaff.minimumFret = #8
    <c a'>2
    \set TabStaff.minimumFret = #5
     \acciaccatura  <c f>16( d8) <c f>8 g16\4 \acciaccatura a g\4
    f8 |
    <bf d f>4. 
   \set TabStaff.minimumFret = #8
    ef8 \glissando <f d'>2 |
   \set TabStaff.minimumFret = #5
   <a, d f a>2 \acciaccatura  <c f>16( d8) <c f>8 <a d f>8 <g c e\2> ~ <g c e\2>4
   a'16 \acciaccatura bf16 a16 e8\2
    
    
 
  }

}

<<
  \new ChordNames {
    \time 4/4
    \key a \major
    \chordmode  {
      \set chordNameSeparator = \markup { "/" }
      d1:m f d:m f bf d:m c c
    }
  }

  \new FretBoards {
    \time 4/4
    \key a \major
    \chordmode {
      \set predefinedDiagramTable = #custom-fretboard-table-one
      d1:m f'' d:m f' bf d:m c c
    }
  }


  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c {
      \improvisationOn
      \music_rhythm
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
    \tempo 4 = 80
  }
}
