\version "2.18.2"
\header {
  title = "Josie"
  subtitle = ""
  arranger = ""
  composer = "Steely Dan"
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
\include "bending.ily"

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
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 116
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

% ------ Guitar 1 ------
gtr_intro = {
  e,8\4 d'8\2~ d8\2 <fs,\4 cs'\3>8~ <fs\4 cs'\3>4~ <fs\4 cs'\3>8 <ef\4 bf'\3>8~ |
  <ef\4 bf'\3>8 <e\4 b'\3>8~ <e\4 b'\3>2~ <e\4 b'\3>8 r8 |
  e8\4 d'8\2~ d8\2 <fs,\4 cs'\3>8~ <fs\4 cs'\3>4~ <fs\4 cs'\3>8 <ef\4 bf'\3>8~ |
  <ef\4 bf'\3>4. <b\5 fs'\4>8~ <b\5 fs'\4>8 <d\5 a'\4>8~ <d\5 a'\4>8 r8 |
  \tuplet 3/2 {e4\5 a4\4 gs\4 } \tuplet 3/2 {g4\4 fs4\4 b4\3 } |
  <f\4 c'\3 e\2>2 <bf e a>2 |
  \set TabStaff.minimumFret = #5 <g\4 d' fs>4. <gs\4 c\3 g'\2>8~  <gs\4 c\3 g'\2>2 |
  \set TabStaff.minimumFret = #0
}

gtr_verse_riff = {
  e,4. r16 e b'8\6 d8\5 r8 e8\5 |
  e,4. r16 e d'8\5 cs\5 r8 e8\5 |
  e,8 d'\5 r8 cs\5 d\5 r8 e, e'8\5 |
  e,4. r16 e g8\6 d'8\5 a8\6 d8\5 |
  e,4. r16 e b'8\6 d8\5 r8 e8\5 |
  e,4. r16 e d'8\5 cs\5 r8 e,8 |
  d'8.\5 d16\5 cs8\5 c8( c4) r8 a8\6 |
  g8.\6 g16\6 fs8\6 f8\6( f4\6) r4 |
  e4. r16 e b'8\6 d8\5 r8 e8\5 |
  e,4. r16 e b'8\6 d8\5 r8 g,8\6 |
  a4.\6 r16 a\6 e8\6 g8\6 r8 a8\6 |
  g4 d'4\5 c4 r4 |
  e,4. r16 e b'8\6 d8\5 r8 e8\5 |
  g,2 a2\6 |
  e4. r16 e b'8\6 d8\5 r8 e8\5 |
}

gtr_solo = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #10
  <>^"Solo"
  r4 c''\startBend\2 d\stopBend d8\1 e\1 |
  \set TabStaff.minimumFret = #12
  fs4\1\startBend g8\stopBend fs8 e4 d8\2 e8~ |
  e b\2~b4\2 r8 d4\2 d,8 |
  r4 cs'8\2 ds,8 r8 g8 r8 e8 ~ |
  e8 a8\3 <g' d>4 e4 d4 ~ |
  d4 e8 r8 d8  r8 r8 cs8 ~ |
  cs8 e8 a,8 cs8 b8 e,8 ~ e4 |

}

gtr = \relative c' {
  \Key
  \set TabStaff.minimumFret = #0
  %\set TabStaff.restrainOpenStrings = ##t
  \clef moderntab
  \gtr_intro
  \gtr_verse_riff
  \break
  \gtr_solo


}
gtrHarmony = \chordmode {
  \jazzChords
  s1 s1 s1 s1 s1 |
  s1 s1
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
  \clef moderntab

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
    %    \new StaffGroup = "horns" <<
    %      \new Staff = "tenosax" \with {
    %        instrumentName = #"Alto Sax"
    %       midiInstrument = #"alto sax"
    %      }
    %      \altoSax
    %   >>

    \new StaffGroup = "rhythm" <<
      \new ChordNames = "chords" \gtrHarmony
      \new TabStaff = "guitar"  \with {
        instrumentName = #"Guitar"
        % stringTunings = \stringTuning <b,, e, a, d fs b>
      }
      \guitar
      %     \new PianoStaff = "piano" \with {
      %       instrumentName = #"Piano"
      %      midiInstrument = #"rock organ"
      %     }
      %    \piano
      %    \new TabStaff = "bass"  \with {
      %      instrumentName = #"Bass" stringTunings = #bass-tuning
      %    }
      %    \bass
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
    \tempo 4 = 116
  }
}

