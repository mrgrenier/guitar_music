\version "2.18.2"
\header {
  title = "Always On The Run"
  subtitle = "Funk-n-A"
  composer = "Lenny Kravitz"
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

main_riff = { }

%% insert chord name style stuff here.

jazzChords = { }

%%%%%%%%%%%% Keys'n'thangs %%%%%%%%%%%%%%%%%

global = {
  \time 4/4
  \tempo 4 = 85
}

Key = { \key g \major }

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
  \set TabStaff.minimumFret = #1
  r2. <fs' cs a>4 | 
  e,,,8 e'16\4 r16 d16\4 \glissando cs\4 \deadNote e,\5 d'\4 r \deadNote e, g'\3( d) \deadNote a e'8.\4 | 
  e,8 e'16\4 r16 d16\4 \glissando cs\4 \deadNote e,\5 d'\4 r d\4 d\4( b\5) g e\6 d'\4 e\4 | 
  e,8 e'16\4 r16 d16\4 \glissando cs\4 \deadNote e,\5 d'\4 r \deadNote e, g'\3( d) \deadNote a e'8.\4 | 
  e,8 e'16\4 r16 d16\4 \glissando cs\4 \deadNote e,\5 d'\4 r d\4 d\4( b\5) g e\6 d'\4 e\4 | 
}
gtrHarmony = \chordmode {
  \jazzChords
  e1:7 e:7 e:7 e:7
  e1:7 e:7 e:7 e:7
}
guitar = {
  \tabFullNotation
  \global
  <<
    \gtr
  >>
}


% ------ Bass Guitar ------
Bass = \relative c {
  \Key
  \set TabStaff.minimumFret = #5
  r1 | r1 | r1 | r1 |
  r4 r8. g'16 g16 g16 \deadNote g16 fs16 r16  g,16\3 d'16\2 fs16\1 |
 

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
      \new TabStaff = "guitar" 
      \with { 
        instrumentName = \markup \center-column { "Baritone" "Guitar" } 
	 stringTunings = \stringTuning <b,, e, a, d fs b>
}
      \guitar
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
      \override InstrumentName.self-alignment-X = #CENTER
      skipBars = ##t
    }
  }
  \midi {
    \tempo 4 = 85
  }
}