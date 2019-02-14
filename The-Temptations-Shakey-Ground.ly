%
%
%
\version "2.19.82"
\header {
  title = "Shakey Ground"
  subtitle = "Funk-n-A"
  composer = "The Temptations"
  tagline = \markup {
    \column {
      "Parts"
    }
  }
}

% To make the example display in the documentation
\paper {
  #(set-paper-size "letter")
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

%% insert chord name style stuff here.


%%%%%%%%%%%% Keys'n'thangs %%%%%%%%%%%%%%%%%

global = {
  \numericTimeSignature \time 4/4
  \tempo 4 = 91
}

Key = { \key d \major }

% ############ Horns ############

alto_intro = {
  r1 |  r1 | e1~ | e1 ~ | e8 r8 r4 r2 |
}

alto_riff_a = {
  b16 r16  b8~b8 cs16 r16 fs8~fs16 e16 r4 |
  r1 |
}

alto_riff_b = {
  b16 r16  b8~b8 cs16 r16 fs8~fs16 e16 r4 |
  r4 r8 b16 cs16 d16 r16 cs16 r16 b16 cs16 r8 |
}

alto_solo = {
  fs1 | g2~g16 fs g fs g fs e cs |
  e4~e16 cs b cs e4~ e16 cs b cs |
  e16 fs r16 fs16 r16 cs16 b g fs-. e-. cs-. e~ e8 cs16 b16 |
  r8 b'16 cs16 r16 g'8 r16 b,16 cs16 r16 fs8 r16 b,16 cs 16 |
  r16 e8 r8. b16 cs16 r8 fs16 g fs-. e-. cs8-. |
  fs16-^ g fs-. e-. fs16-^ g fs-. e-.  fs16-> g fs-. e-. fs16-^ g fs-. e-.|
  e16-. g16~ g8 fs16-. e8. cs16-. b-. g fs e cs b cs |
}

% ------ Alto Saxophone ------
% alto = \transpose c a \relative c' {
alto =  \relative c'' {
  \Key
  \alto_intro
  r1  r1  r1  r1
  r1 | r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 |
  \alto_riff_a
  \alto_riff_a
  \alto_riff_b
  \alto_solo
}
altoSax = {
  \global
  \clef treble
  <<
    \alto
  >>
}


% ############ Rhythm Section #############

guitar_riff_intro = {
  <e, d'\5>8 <e e'\5>8 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5> r8  \deadNotesOn e16 16 16 16 \deadNotesOff |
  <e d'\5>8 <e e'\5>8 \deadNote g'\4 g\4  \deadNote g\4 <e, d'\5> \deadNotesOn e16 16 16 16 \deadNotesOff |
  <e d'\5>8 <e e'\5>8 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5>   \deadNotesOn e8 e16 8 16  \deadNotesOff |
  <e d'\5>8 <e e'\5>16 g'\4 \deadNotesOn e,16 16  \deadNotesOff g'8\4  \deadNote e,8 <e d'\5> <e d'\5>16 a'\4 <e, d'\5> e |
  <e d'\5>8 <e e'\5>8 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5> r8  \deadNotesOn e16 16 16 16 \deadNotesOff |
  <e d'\5>8 <e e'\5>8 \deadNotesOn e16 e16 \deadNotesOff g'8\4  \deadNotesOn e,16 e16 \deadNotesOff <e d'\5>( e'\5) \deadNote e, <d' g b> <e, d'\5>8 |
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5> r8  \deadNotesOn e16 16 16 16 \deadNotesOff |
  <e d'\5>8 <e e'\5>8 \deadNotesOn e16 e16 \deadNotesOff <e'\5 a\4>( b'\4)  \deadNotesOn e,,16 e16 \deadNotesOff <g'\4 g b> <g\4 g b> \deadNote e, <e d'\5>8 e16|
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5>  \deadNotesOn e16 e16 e16 16 16 16 \deadNotesOff |
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff <e g'\5>16 ( a'\5)   \deadNotesOn e,16 16  \deadNotesOff <e g'\5>8  \deadNotesOn e16 8 16  \deadNotesOff|
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5>  \deadNotesOn e16 16 16 16 16 16 \deadNotesOff |
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16  e16 16 16 16 \deadNotesOff  <e d'\5  d g b>16 16  \deadNotesOn e16 16 8 \deadNotesOff |
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5>  \deadNotesOn e16 16 16 16 16 16 \deadNotesOff |
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff g'\4 g\4  e, e16 <d'\5 g\4> g\4 \deadNote e,16 a'\4 <e, d'\5>16   <e d'\5>16 |
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5>  \deadNotesOn e16 16 16 16 16 16 \deadNotesOff |
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff \acciaccatura fs'\4  g\4 <g b> \deadNotesOn e,16 16 \deadNotesOff  <e d'\5>8 e16 <d' g b>16 e,8 |
  \break
  <e d'\5>8^\markup { \bold "chorus:"} <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5>  \deadNotesOn e16 16 16 16 16 16 \deadNotesOff |
  <e d'\5>8 <e e'\5>8  \deadNotesOn e16 e16 \deadNotesOff g'\4( a\4)  \deadNotesOn e,16 16 \deadNotesOff  <g'\4 g> <g\4 g> \deadNote e, <g'\4 g> \deadNotesOn e, e \deadNotesOff  |
  <e e'\5>8 <e e'\5 g\4 g b>16  <e e'\5 g\4 g b>16 <e e'\5> <e e'\5> <g'\4 as\3 e'\2> <g\4 as\3 e'\2> <g\4 b\3 e\2>8 r8 r16 g\4 e\5( d\5) |
  \deadNote e,16 <b''\4 e\3 gs\2>32 \glissando <cs\4 a'\2> <b\4 e\3 gs\2>16 \deadNotesOn <b\4 e\3 gs\2> \deadNotesOff \deadNote e,, <as'\4 cs\3 g'\2> \deadNotesOn <as\4 cs\3 g'\2> <as\4 cs\3 g'\2> \deadNotesOff \deadNotesOn e, e \deadNotesOff <cs' gs' cs f gs> <cs gs' cs f gs> \deadNote e, <d'\5 a'\4> \deadNotesOn e,  e \deadNotesOff |
  <e d'\5>8 <e e'\5>8 \deadNotesOn e16 e16  \deadNotesOff <e cs'\5>8 <e d'\5> r8  \deadNotesOn e16 16 \deadNotesOff 16 16  |
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16  \deadNotesOff g'\4  a\4 \deadNotesOn e,16 e16  \deadNotesOff <e'\5 g\4>16 <e\5 g\4>16 <e\5 g\4 >16  <g\4 g b>16 \deadNotesOn e,16 e16  \deadNotesOff |
  <e d'\5>8<e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5>  \deadNotesOn e16 16 16 16 16 16 \deadNotesOff |
  <e cs'\5>16  <e cs'\5 g'\4 g>16 <e cs'\5 g'\4>16  <e cs'\5 g'\4>16 \deadNotesOn e16 e16 \deadNotesOff <cs'\5 gs'\4>16 <cs\5 gs'\4>16 <e, d'\5>16  <e d'\5>16  <e d'\5 a'\4>16  <e d'\5 a'\4>16 <e ds'\5> <e ds'\5 g\4> e e |
  \break
  <e d'\5>8^\markup { \bold "verse2:"}  <e e'\5>8 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5> r8  \deadNotesOn e16 16 16 16 \deadNotesOff |
  \deadNote e8 g'8\4 \deadNotesOn e,16 e16 \deadNotesOff g'\4 \glissando a\4 \deadNotesOn e,16 e16 \deadNotesOff <g'\4 g> g\4 \deadNote e, <g'\4 g> \deadNotesOn e, e \deadNotesOff
  <e e'\5>8 <e e'\5 g\4 g b>16  <e e'\5 g\4 g b>16 <e e'\5> <e e'\5> <g'\4 as\3 e'\2> <g\4 as\3 e'\2> <g\4 b\3 e\2>8 r8  \deadNotesOn e,16 e16 \deadNotesOff <e d'\5>8 |
  \deadNote e16 <e''\3 gs\2 cs\1>8 \deadNotesOn e,,16 e16 \deadNotesOff <b''\3 ds\2 gs\1>16 \deadNotesOn e,,16 e16 \deadNotesOff a\6 a\6 <d\5 a'\4 d\3 fs\2> <d\5 a'\4 d\3 fs\2> e, <g'\4 g\3 b\2> e, e |
  <e d'\5>8 <e e'\5>8 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5> r8  \deadNote e16  <d'\4 g\3 b\2>16 \deadNotesOn e,16 16 \deadNotesOff |
 <e e'\5>16 <e e'\5>16  g'16\4 g16\4 <e, e'\5> <e e'\5> <e d'\5> <e e'\5>  <e e'\5> <e e'\5> <e e'\5 g\4 g\3> <e e'\5 g\4 g\3> \deadNote e <d'\4 g\3 b\2> \deadNotesOn e, e \deadNotesOff |
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e8  \deadNotesOff <e cs'\5>8 <e d'\5> r8  \deadNotesOn e16 16 16 16 \deadNotesOff |
 <e e'\5>8 <e e'\5 g\4 g\3 b\2>16 e \deadNotesOn e e \deadNotesOff <g'\4 g\3 b\2> <g\4 g\3 b\2> <e, cs'\5> <e cs'\5> <e cs'\5> <d'\4 g\3 b\2> e, <d'\4 g\3 b\2> e, e |   
}

% ------ Guitar ------
gtr = \relative c {
  \Key
  \set TabStaff.minimumFret = #0
  \guitar_riff_intro
}
gtrHarmony = \chordmode {


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
  s1
}
rhLower = \relative c' {
  \voiceTwo
  \Key
  s1
}

lhUpper = \relative c' {
  \voiceOne
  \Key
  r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1 r1
}
lhLower = \relative c {
  \voiceTwo
  \Key
  s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
  e16 e16 e,8( e16) e16 cs' e,16 d'8 r8 r16 g16 e16 d16 |
  e16 e16 e,8( e16) e16 cs'8 d16 e,16 cs' cs d e, ds' ds |
  e16 e16 e,8( e16) e16 cs' e,16 d'8 r8 r16 g16 e16 d16 |
  cs,16 cs'8 cs,16 cs'8 cs,16 cs16 d16 d'8 d,16 ds16 ds'8 e,16 |
  e'16 e16 e,8( e16) e16 cs' e,16 d'8 r8 r16 g16 e16 d16 |
  e16 e16 e,8( e16) e16 cs'8 d16 e,16 cs' cs d e, ds' ds |
  e16 e16 e,8( e16) e16 cs' e,16 d'8 r8 r16 g16 e16 d16 |
  cs,16 cs'8 cs,16 cs'8 cs,16 cs16 d16 d'8 d,16 ds16 ds'16( ds8)|

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
  r1 | r | r | r2 r8 d,8 d d |
  g16( gs) e( d) d,\glissando e8\5 d'8. d8 d8 d8 |
  g16( gs) e( d) d,\glissando e8\5 d'8. d8 d8 d8 |
  g16( gs) e( d) d,\glissando e8\5 d'8. d8 d8 d8 |
  g16( gs) e( d) d,\glissando e8\5 d'8. d8 d8 d8 |
  g16( gs) e( d) d,\glissando e8\5 d'8. d8 d8 d8 |
  g16( gs) e( d) d,\glissando e8\5 d'8. d8 d8 d8 |
  g16( gs) e( d) d,\glissando e8\5 d'8. d8 d8 d8 |
  g16( gs) e( d) d,\glissando e8\5 d'8. d8 d8 d8 |
  g16( gs) e( d) d,\glissando e8\5 d'8. d8 d8 d8 |
  g16( gs) e( d) d,\glissando e8\5 d'8. d8 d8 d8 |
  g16( gs) e( d) g,\glissando gs8\4 d'8. d8 d8 d8 |
  cs8. cs8. cs8 r8 d8\3 r8 ds\3 |

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
}
down = \drummode {
  \voiceTwo
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
      \new Staff = "altosax" \with {
        instrumentName = #"Alto Sax"
        midiInstrument = #"alto sax"
      }
      \altoSax
    >>

    \new StaffGroup = "rhythm" <<
      \new ChordNames = "chords" \gtrHarmony
      \new TabStaff = "guitar" \with { instrumentName = #"Guitar" }
      \guitar
      \new PianoStaff = "piano" \with {
        instrumentName = #"Piano"
        midiInstrument = #"acoustic grand"
      }
      \piano
      \new TabStaff = "bass" \with {
        instrumentName = #"Bass"
        stringTunings = #bass-five-string-tuning
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
    \tempo 4 = 91
  }
}