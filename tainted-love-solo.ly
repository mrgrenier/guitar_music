\version "2.23.82"
\header {
  title = "Tainted Love"
  subtitle = "A Major Blues"
  arranger = ""
  composer = "Imelda May"
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
 % \tempo 4 = 170
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
  r2. r8 gs'8 | a gs a r8 r2 |
  r2 r8 f g gs | a gs a r8 r2 |
}

gtr_solo = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #5
  <>^"Solo"
  \tuplet 3/2 { <a' e cs g>8 <a e cs g> <a e cs g> }  <a e cs g>4-. \tuplet 3/2 { <a e cs g>8 <a e cs g> <a e cs g> }  <a e cs g>4-.  |
  \tuplet 3/2 { <a e cs g>8 <a e cs g> <a e cs g> } \tuplet 3/2 { <a e cs g>8  <a e cs g>8 <a e cs g>8 }  <a e cs g>4-. a,,4 \glissando | 
  \set TabStaff.minimumFret = #8 
  c4 c''4 as8 g4. c8 as4 c4 as4. |
  <f' c>8 <f c>8 <f c>4 <c\2 gs>8 <c\2 gs>8 <c\2 gs>4 | <a f>8 <a f>8 <a f>8 <a f>4 <a f>8 <a f>4-.
  \break
  \tuplet 3/2 {fs8 a e\1} \tuplet 3/2 {e8 g e\1} \tuplet 3/2 {fs8 a e\1} \tuplet 3/2 {a8\3 c\2 e,\1} |
  \tuplet 3/2 {fs8 a e\1} \tuplet 3/2 {e8 g e\1} \tuplet 3/2 {fs8 a e\1} \tuplet 3/2 {fs8 a e\1} |
  \tuplet 3/2 {fs8 a e'\1} \tuplet 3/2 {fs,8 a e'\1} 
  \tuplet 3/2 {ds fs,8 a} \tuplet 3/2 {fs'\1 a,\3 fs'\1 } \tuplet 3/2 {a,\3 c\2 fs} \tuplet 3/2 {a,\3 c\2 fs} \tuplet 3/2 {a,\3 c\2 fs} <a,\3 c\2 fs>4|
  \break
  \set TabStaff.minimumFret = #5 
  <a e>8  <a e>8  \tuplet 3/2 {<d, fs> ( <ds g> <d fs>) } <c e> <d fs>8 <d fs>4 |
  <d fs>8( <c e>) a4 <c e>8 <c e>4. \tuplet 3/2 { g8( a8 g8) } e8 g8  \tuplet 3/2 { e8 g8 e8 }  g8 a8
  \tuplet 3/2 { a,8 c d}  \tuplet 3/2 {e g a} \tuplet 3/2 { \grace c8  d8( c8) a8 }  \tuplet 3/2 { c( cs) e } 
  \tuplet 3/2 { d c cs } \tuplet 3/2 { e fs e} \tuplet 3/2 { c' a b} \tuplet 3/2 { c g e\1} a,,1\5

}

gtr = \relative c' {
  \Key
  \override Beam.concaveness = #10000

  \set TabStaff.minimumFret = #0
  %\set TabStaff.restrainOpenStrings = ##t
  \clef moderntab
 % \gtr_intro
  \break
 % \gtr_verse_riff
  \break
  \gtr_solo
  


}

gtrHarmony = \chordmode {
  \jazzChords
  a1:7 a1:7  c1 c1 f1 f1 
  a1:7 a1:7  c1 c1 f1 f1

  \break 

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
        instrumentName = #"Guitar Solo"
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

