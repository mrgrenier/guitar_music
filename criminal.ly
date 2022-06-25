\version "2.18.2"
\header {
  title = "Criminal"
  subtitle = "Key Cm"
  arranger = ""
  composer = "Fiona Apple"
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
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 90
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
  <>^"Intro"
  s1 s1 | r4 fs,16 f16 ef4. fs16 f16 ef8 ~ |
  ef4 fs16 f16 ef4. c''4 |
  r4 fs,,16 f16 ef4. fs16 f16 ef8 ~ |
  ef4 fs16 f16 ef4 c''8 b bf |
  
  \set TabStaff.minimumFret = #5 
  \set TabStaff.minimumFret = #0
}

gtr_verse_riff = {
  <>^"Verse"
  a8 a8 r4 c8 c8 c8 c8 | 
  r4 <ef c> <d a>8 <c g>4 r8 |
  r4 c8 r8 <c a> a\2 c a\2 |
  r2 c8 ef16 a,\2 d8 c |
  r1 | r2 r8 ef4 e8 | r1 |
  <c ef>8 r8 <c ef>8 r8 <d a>8 <c g>4. |
  <>^"Pre-Chorus"
  \set TabStaff.minimumFret = #6
  e,4\3 g4 f2\3 |
  a2.\2 r4 |
  g'2 f2 e2. d8 c8 | 
  c4 g4 f2 |
  ef2 g4. af8 |
  <c a>2.~<c a>8 c16 d16 |
  ef2. d8 c8 | c4\2 <c ef>8 r4 <c ef>8 r8 <c ef>8 |
  r4 fs,16\3 f16\3 ef2~ef8| 
  r8 c'8 a8 c8 ef8 c8 a8 c8 |
  r4 fs,16\3 f16\3 ef2~ef8| 
  r4 f'4 r8 ef8 c8 r8 |
  c2 bf2 | gs2 g2 | f1 |
  g4 a g gs | a8 gs8 a8 r8 r2 |
}

gtr_solo = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #10
  <>^"Solo"
}

gtr = \relative c' {
  \Key
  \override Beam.concaveness = #10000

  \set TabStaff.minimumFret = #0
  %\set TabStaff.restrainOpenStrings = ##t
  \clef moderntab
  \gtr_intro
  \break
  \gtr_verse_riff
  \break
  \gtr_solo


}

gtrHarmony = \chordmode {
  \jazzChords
  c1:min7 s1 s1 s1 |
  s1 s1
  \break
  a1:min f:7 a:min f:7
  a1:min f:7 a:min f:7 
  \break
  c2 bf2 f1:7
  c2 bf2 a1:min
  c2 bf2 af2:7 g2 f1:7 af1:7
  \break
  f1:7 c:min7 f:7 c:min7
  f:7 c:min7 bf af:7 g f:7
  \break
  a1:min f:7 a:min f:7
  a1:min f:7 a:min f:7 
  \break 
  c2 bf2 f1:7
  c2 bf2 a1:min
  c2 bf2 af2:7 g2 f1:7 af1:7
  \break
  f:7 c:min7 f:7 c:min7
  f:7 c2:min7 bf2 af2:7 g2 f1:7 f1:7 
  \break
  ef b af:7 
  ef b af:7
  ef b af:7
  ef b af:7
  \break  
  f:7 c:min7 f:7 c:min7
  f:7 c:min7 bf af:7 g f:7
  \break
  f:7 c:min7 f:7 c:min7
  f:7 c:min7 bf af:7 g f:7
  \break 
  c:min7

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

