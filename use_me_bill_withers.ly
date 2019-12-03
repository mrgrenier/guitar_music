\version "2.18.2"
\header {
  title = "Use Me"
  subtitle = "Baritone Guitar Tunning (B E A D Gb B)"
  composer = "Bill Withers"
  tagline = \markup {
    \column {
      "Parts"
    }
  }
}
% To make the example display in the documentation
\paper {
  %  paper-width = 130
}
%#(set-global-staff-size 16)
\include "english.ly"

%%%%%%%%%%%% Some macros %%%%%%%%%%%%%%%%%%%
sd = {
  \stemDown
}

sl = {
  \override NoteHead.style = #'slash
  \hide Stem
}
nsl = {
  \revert NoteHead.style
  \undo \hide Stem
}
crOn = \override NoteHead.style = #'cross
crOff = \revert NoteHead.style

main_riff = {
  d8\staccato e8 g4 e8\staccato r8 d8\staccato g8( |
  g8) e8\staccato r8 g8\staccato r8 e8\staccato d8\staccato r8  |
  cs4 e8\staccato r8 r2 |
  r1 |
  d8\staccato e g4 e8\staccato r8 d8\staccato g8( |
  g8) e8\staccato r8 g8\staccato r8 e8\staccato d8\staccato r8 |
  cs8\staccato r8 e8\staccato r8 r2 |
  r8 b8\staccato c8\staccato cs8\staccato r2 |
}

%% insert chord name style stuff here.

jazzChords = { }

%%%%%%%%%%%% Keys'n'thangs %%%%%%%%%%%%%%%%%

global = {
  \time 4/4
  \tempo 4 = 154
}

Key = { \key d \major }

% ############ Horns ############

% ------ Alto Saxophone ------
alto = \transpose c a \relative c' {
  \Key
  \main_riff
}
altoHarmony = \transpose c' a {
  \jazzChords
}
altoSax = {
  \global
  \clef treble
  <<
    \alto
  >>
}

% ############ Rhythm Section #############

% ------ Guitar ------
gtr = \relative c' {
  \Key
  \set TabStaff.minimumFret = #4
  <e, d' g>8 <e d' g>8 <e d' g>8 <e d' g>8 e,8 e8 <e' d' g>8 <e d' g>8 |
  e,8 <e' d' g>8 <e d' g>8 e, <e' d' g>8 <e d' g>8 <e d' g>8 <e, \deadNote a \deadNote d>8 |
  <a\6 g'\4 cs\3>8 <a\6 g'\4 cs\3>8 <a\6 g'\4 cs\3>8 <a\6 g'\4 cs\3>8
  \deadNotesOn <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8 |
  <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8
  \deadNotesOff |
  <e' d' g>8 <e d' g>8 <e d' g>8 <e d' g>8 e,8 e8 <e' d' g>8 <e d' g>8 |
  e,8 <e' d' g>8 <e d' g>8 e, <e' d' g>8 <e d' g>8 <e d' g>8 <e, \deadNote a \deadNote d>8 |
  <a\6 g'\4 cs\3>8 <a\6 g'\4 cs\3>8 <a\6 g'\4 cs\3>8 <a\6 g'\4 cs\3>8
  \deadNotesOn <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8 |
  <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8 <a d g b e>8
  \deadNotesOff |

}
gtrHarmony = \chordmode {
  \jazzChords
  e1:min7 e:min7 a:7 a:7
  e1:min7 e:min7 a:7 a:7
}
guitar = {
  \tabFullNotation
  \global
  <<
    \gtr
  >>
}

%% ------ Piano ------
rhUpper = \relative c'' {
  \voiceOne
  \Key
  \sd
  \main_riff
}
rhLower = \relative c' {
  \voiceTwo
  \Key

}

lhUpper = \relative c {
  \voiceOne
  \Key
  \sd
  \main_riff
}
lhLower = \relative c {
  \voiceTwo
  \Key

}

PianoRH = {
  \clef treble
  \global
  <<
    \new Voice = "one" \rhUpper
    \new Voice = "two" \rhLower
  >>
}
PianoLH = {
  \clef bass
  \global
  <<
    \new Voice = "one" \lhUpper
    \new Voice = "two" \lhLower
  >>
}

piano = {
  <<
    \new Staff = "upper" \PianoRH
    \new Staff = "lower" \PianoLH
  >>
}

% ------ Bass Guitar ------
Bass = \relative c {
  \Key
  \set TabStaff.minimumFret = #5
  d,8\3 e8 e,8 r8 \deadNote e8 d'8\3 ds8 e8 |
  r8 d\3 ds e r8 e, b'\4 e, |
  a4\4 a8\4 r8 e8 e8 r8 a8\4( |
  a8\4) a8\4 b c \deadNote d\3 d\3 d\3 ds |
  d8\3 e8 e,8 r8 \deadNote e8 d'8\3 ds8 e8 |
  r8 d\3 ds e r8 e, b'\4 e, |
  a4\4 a8\4 r2 r8 |
  r8 b8 c8 cs8 r8 d8\3 ds8 e8 |

}
bass = {
  \tabFullNotation
  \global
  <<
    \Bass
  >>
}

% ------ Drums ------
up = \drummode {
  \voiceOne
  cymr8 cymr cymr cymr cymr cymr cymr cymr |
  cymr8 cymr cymr cymr cymr cymr cymr cymr |
  cymr8 cymr cymr cymr cymr cymr cymr cymr |
  cymr8 cymc r cymc r cymc r cymr |
}
down = \drummode {
  \voiceTwo
  bd8 cymr bd bd ss bd cymr bd |
  bd8 cymr bd bd ss bd cymr bd |
  bd8 cymr bd bd ss bd cymr bd |
  bd8 ss bd cymc bd cymc ss bd |
}

drumContents = {
  \global
  <<
    \new DrumVoice \up
    \new DrumVoice \down
  >>
}

%%%%%%%%% It All Goes Together Here %%%%%%%%%%%%%%%%%%%%%%

\score {
  <<
    \new StaffGroup = "horns" <<
      \new Staff = "tenosax" \with {
        instrumentName = #"Alto Sax"
        midiInstrument = #"alto sax"
      }
      \altoSax
    >>

    \new StaffGroup = "rhythm" <<
      \new ChordNames = "chords" \gtrHarmony
      \new TabStaff = "guitar"  \with { 
	     instrumentName = #"Guitar" stringTunings = \stringTuning <b,, e, a, d fs b>
		 }
      \guitar
      \new PianoStaff = "piano" \with {
        instrumentName = #"Piano"
        midiInstrument = #"rock organ"
      }
      \piano
      \new TabStaff = "bass"  \with {
        instrumentName = #"Bass" stringTunings = #bass-tuning
      }
      \bass
      %     \new DrumStaff \with { instrumentName = #"Drums" }
      %     \drumContents
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
    \context {
      \Score
      \override BarNumber.padding = #3
      \override RehearsalMark.padding = #2
      skipBars = ##t
    }
  }
  \midi {
    \tempo 4 = 154
  }
}