%
%
%
\version "2.19.82"
\header {
  title = "I Got You I Feel Good"
  subtitle = "Funk-n-A"
  composer = "James Brown"
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

guitar_intro = {
  r1 r1 r1 r1 r1 r1 r1
}
guitar_riff_a = {
  \set TabStaff.minimumFret = #3
  d8\5 r8 <d\5 fs\4 c'\3>8 \glissando <cs\5 f\4 b\3>8
  <d\5 fs\4 c'\3>8 \glissando <cs\5 f\4 b\3>8
  <d\5 fs\4 c'\3>8 \glissando <cs\5 f\4 b\3>8  |
  <d\5 fs\4 c'\3>8 r8 d8\5 d'4\3 c4\3 a8\4 |
}

guitar_riff_b = {
  \set TabStaff.minimumFret = #3
  g8\6 r8 <g\6 f'\4 b\3 d\2>8 \glissando <fs\6 e'\4 as\3 cs\2>8
  <g\6 f'\4 b\3 d\2>8 \glissando <fs\6 e'\4 as\3 cs\2>8
  <g\6 f'\4 b\3 d\2>8 \glissando <fs\6 e'\4 as\3 cs\2>8 |
  <g\6 f'\4 b\3 d\2>8 r8 g8\6 g'4\4 f4\4 c8\5 |
}

guitar_riff_c = {
  r4  <a,\6 g'\4 cs\3 e\2>4  \staccato <a\6 g'\4 cs\3 e\2>4 \staccato r4 |
  r4  <g\6 f'\4 b\3 d\2>4 \staccato <g\6 f'\4 b\3 d\2>4 \staccato r4 |
  r8 d'8\5 r8 fs8\4 r8 a8\4 r8 c8\3  |
  r8  e2\2 r4 cs,8 \glissando |
}

guitar_riff_d = {
  d8\5 r8 d8\5 d'8\3 r8 c8\3 r8 a8\4 |
  c8\3 a8\4 r8 f4\5 \glissando g8\5 \glissando f8\5 r8 |
  d8\5 r8 d8\5 d'8\3 r8 c8\3 r8 a8\4 |
  c8\3 a8\4 r8 f4\5 \glissando g8\5 \glissando f8\5 r8 |
}

guitar_chorus_a = {
  \stemDown
  <g\5 b\4 f'\3 g\2>8.[  <g\5 b\4 f'\3 g\2>16] <g\5 b\4 f'\3 g\2>8[
  \deadNotesOn <g\5 b\4 >16 <g\5 b\4 >16] <g\5 b\4 >16 <g\5 b\4 >16 \deadNotesOff
  <g\5 b\4 f'\3 g\2>16 <g\5 b\4 f'\3 g\2>16 <g\5 b\4 f'\3 g\2>8
  <fs\5 as\4 e'\3 fs\2>8 |
}

guitar_chorus_b = {
  \stemDown
  <d\5 fs\4 c'\3 d\2>8.  <d\5 fs\4 c'\3 d\2>16 <d\5 fs\4 c'\3 d\2>8
  \deadNotesOn <d\5 fs\4 >16 <d\5 fs\4 >16 <d\5 fs\4 >16 <d\5 fs\4 >16 \deadNotesOff
  <d\5 fs\4 c'\3 d\2>16 <d\5 fs\4 c'\3 d\2>16 <d\5 fs\4 c'\3 d\2>8
  <cs\5 f\4 b\3 cs\2>8 |
}

guitar_chorus_c = {
  <a\5 cs\4 g'\3 a\2>8  r4. r2
  <a\5 cs\4 g'\3 a\2>8  r4. r2
}

%% Sax Riffs %%

sax_intro = {
  g16 g16 g16 r16 b16 r16 cs16 r16 b16 r16 g8 r16 d8 b'16( |
  b2) b8 r4. | r2 f'2 | f8 r4. r2 | b2 b8 r4. | r2 d2 | d8 r4. r2
}

sax_riff_a = {
  r4 a8 gs8 a8 gs8 a8 gs8 | a8 r4. r2 |
}

sax_riff_b = {
  r4 g8 fs8 g8 fs8 g8 fs8 | g8 r4. r2 |
}

sax_riff_c = {
  r4 d,8 r8 d8 r4. |
  r4 g8 r8 g8 r4. |
  r8 d8 r8 fs8 r8 a8 r8 c8  |
  r8 e2 r4 cs,8 |
}

sax_solo = {
  d8 r8 d8 d'8 r8 c8 r8 a8 |
  c8 a8 r8 f4 \glissando g8 \glissando f8 r8 |
  d8 r8 d8 d'8 r8 c8 r8 a8 |
  c8 a8 r8 f4 \glissando g8 \glissando f8 r8 |
}

sax_chorus = {
  g2 r2 | g2 r2 | d2 r2 | d4 g8 f8 g8 f8 d8 c8 |
  g2 r2 g2 r2 | a'8 r4. r2 | a8 r4. r2 |
}

bass_intro = {
  g16\2 g16\2 g16\2 r16 as16 r16 c16 r16 as16 r16 g8\2 r16 d8\3 g,16( |
  g2) g8 r4. | r2 d'2\3 | d8\3 r4. r2 | d2\3 d8\3 r4. | r2 a'2\2 | a8\2 r4. r2
}

bass_riff_a = {
  d8\4 r8 d'8\2 \glissando cs8\2 d8\2 \glissando cs8\2 d8\2 \glissando cs8\2 \glissando |
  d8\2 r8 d,8\4 d'8\2 r8 c8\2 r8 a8\3 |
}

bass_riff_b = {
  g8\4 r8 g'8\2 \glissando fs8\2 g8\2 \glissando fs8\2 g8\2 \glissando fs8\2 \glissando |
  g8\2 r8 g,8\4 g'8\2 r8 f8\2 r8 d8\3 |
}

bass_riff_c = {
  r4 a8\4 r8 a8\4 r4. |
  r4 g8\4 r8 g8\4 r4. |
  r8 d'8\3 r8 fs8\2 r8 a8\2 r8 c8\1  |
  r8 e2\1 r4.  |
}

bass_riff_d = {
  d16\2 d16\2 d8\2 r8 d16\2 d16\2 d16\2 d16\2 d8\2 r8 d16\2 d16\2 |
  d16\2 d16\2 d8\2 r8 d16\2 d16\2 d16\2 d16\2 d8\2 r8 d16\2 d16\2 |
  d16\2 d16\2 d8\2 r8 d16\2 d16\2 d16\2 d16\2 d8\2 r8 d16\2 d16\2 |
  d16\2 d16\2 d8\2 r8 d16\2 d16\2 d16\2 d16\2 d8\2 r8 d16\2 d16\2 |
}

bass_chorus_a = {
  g8\2 g8\2 f8\3 f8\3 e8\3 e8\3 d8\3 d8\3 |
  g8\2 g8\2 f8\3 f8\3 e8\3 e8\3 d8\3 e8\3 |
}

bass_chorus_b = {
  d8\3 d8\3 c8\4 c8\4 b8\4 b8\4 a8\4 c8\4 |
  d8\3 d8\3 c8\4 c8\4 b8\4 b8\4 a8\4 a8\4 |
}

bass_chorus_c = {
  a8\2 r4. r2 |
  a8\2 r4. r2 |
}

%% insert chord name style stuff here.

jazzChords = { }

%%%%%%%%%%%% Keys'n'thangs %%%%%%%%%%%%%%%%%

global = {
  \numericTimeSignature \time 4/4
  \tempo 4 = 150
}

Key = { \key d \major }

% ############ Horns ############


% ------ Tenor Saxophone ------
tenor = \transpose c d \relative c'' {
  \Key
  \sax_intro

  \repeat volta 2 {
    \sax_riff_a
    \sax_riff_a
    \sax_riff_b
    \sax_riff_a
    \sax_riff_c
  }
  
  \sax_solo
  \sax_chorus

}
tenorHarmony = \transpose c' a {
  \jazzChords
}
tenorSax = {
  \global
  \clef treble
  <<
    \tenor
  >>
}


% ############ Rhythm Section #############

% ------ Guitar ------
gtr = \relative c {
  \Key
  \set TabStaff.minimumFret = #0
  \guitar_intro
  \repeat volta 2 {
    \relative c  { \guitar_riff_a }
    \relative c  { \guitar_riff_a }
    \guitar_riff_b
    \guitar_riff_a
    \guitar_riff_c
  }

  \guitar_riff_d

  \guitar_chorus_a
  \guitar_chorus_a

  \guitar_chorus_b
  \guitar_chorus_b

  \relative c'  {  \guitar_chorus_a }
  \relative c'  {  \guitar_chorus_a }
  \relative c'  {  \guitar_chorus_c }


}
gtrHarmony = \chordmode {
  \jazzChords
  s1 s1 s1 s1 s1 s1 s1
   \repeat volta 2 {
  d1:7 s1  s1 s1
  g1:7 s1
  d1:7 s1
  s4 a2:7 s4 |
  s4 g2:7 s4 |
  s8 d2:7 s4. s1
   }
  d1:7 s1 s1 s1 |
  
  g1:7 s1
  d1:7 s1
  g1:7 s1 
  a1:7 

}
guitar = {
  \tabFullNotation
  \global
  \clef treble
  <<
    \gtr
  >>
}

%% ------ Piano ------
rhUpper = \relative c'' {
  \voiceOne
  \Key
}
rhLower = \relative c' {
  \voiceTwo
  \Key
}

lhUpper = \relative c' {
  \voiceOne
  \Key
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
Bass = \relative c, {
  \Key
  \relative c { \bass_intro }
  \repeat volta 2 {
    \relative c, { \bass_riff_a }
    \relative c, { \bass_riff_a }
    \relative c, { \bass_riff_b }
    \relative c, { \bass_riff_a }
    \relative c, { \bass_riff_c }
  }
  \relative c { \bass_riff_d }
  
  \relative c { \bass_chorus_a }
  \relative c ,{ \bass_chorus_b }
  \relative c { \bass_chorus_a }
  \relative c { \bass_chorus_c }
  
}
bass = {
  \tabFullNotation
  \global
  \clef bass
  <<
    \Bass
  >>
}

% ------ Drums ------
up = \drummode {
  \voiceOne
   s2. s8. cymr16 |
}
down = \drummode {
  \voiceTwo
  sn16 sn16 sn16 r16 sn16 r16 sn16 r16 sn16 r16 sn8 r16 sn8 sn16 |
  \repeat unfold 8 sn16 bd8 r4. |
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
      \new Staff = "tenorsax" \with {
        instrumentName = #"Tenor Sax"
        midiInstrument = #"tenor sax"
      }
      \tenorSax
    >>

    \new StaffGroup = "rhythm" <<
      \new ChordNames = "chords" \gtrHarmony
      \new TabStaff = "guitar" \with {
        instrumentName = #"Guitar"
        midiInstrument = #"acoustic guitar (steel)"
      }
      \guitar
      %     \new PianoStaff = "piano" \with {
      %        instrumentName = #"Piano"
      %        midiInstrument = #"acoustic grand"
      %      }
      %     \piano
      \new TabStaff = "bass" \with {
        instrumentName = #"Bass"
        stringTunings = #bass-tuning
      }
      \bass
%       \new DrumStaff \with { instrumentName = #"Drums" }
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
    \unfoldRepeats
    \tempo 4 = 150
  }
}