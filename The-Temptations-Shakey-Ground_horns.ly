% 
% 
%
\version "2.19.82"
\header {
  title = "Shakey Ground"
  subtitle = "Alto Sax"
  composer = "The Temptations"
  tagline = \markup {
    \column {
      "Horn Parts"
    }
  }
}

% To make the example display in the documentation
\paper {
  #(set-paper-size  "letter")
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
  b16^\markup { \bold "riff A:"}  r16  b8~b8 cs16 r16 fs8~fs16 e16 r4 |
  r1 |
}

alto_riff_b = {
  b16^\markup { \bold "riff B:"}  r16  b8~b8 cs16 r16 fs8~fs16 e16 r4 |
  r4 r8 b16 cs16 d16 r16 cs16 r16 b16 cs16 r8 |
}

alto_solo = {
  fs1^\markup { \bold "Sax Solo:"}  | g2~g16 fs g fs g fs e cs |
  e4~e16 cs b cs e4~ e16 cs b cs |
  e16 fs r16 fs16 r16 cs16 b g fs-. e-. cs-. e~ e8 cs16 b16 |
  r8 b'16 cs16 r16 g'8 r16 b,16 cs16 r16 fs8 r16 b,16 cs 16 |
  r16 e8 r8. b16 cs16 r8 fs16 g fs-. e-. cs8-. |
  fs16-^ g fs-. e-. fs16-^ g fs-. e-.  fs16-> g fs-. e-. fs16-^ g fs-. e-.|
  e16-. g16~ g8 fs16-. e8. cs16-. b-. g fs e cs b cs |
}

% ------ Alto Saxophone ------
alto = \transpose c a \relative c' {
  \Key
  \alto_intro
 \break
  \alto_riff_a
  \break
  \alto_riff_b
  \break
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
  <e d'\5>8 <e e'\5>16 <e e'\5>16 \deadNotesOn e16 e16 \deadNotesOff <e cs'\5>8 <e d'\5>  \deadNotesOn e16 16 16 16 16 16 \deadNotesOff |
  <e d'\5>8 <e e'\5>8  \deadNotesOn e16 e16 \deadNotesOff g'\4( a\4)  \deadNotesOn e,16 16 \deadNotesOff  <g'\4 g> <g\4 g> \deadNote e, <g'\4 g> \deadNotesOn e, e \deadNotesOff  |
 <e e'\5>8 <e e'\5 g\4 g b>16  <e e'\5 g\4 g b>16 <e e'\5> <e e'\5> <g'\4 as\3 e'\2> <g\4 as\3 e'\2> <g\4 b\3 e\2>8 r8 r16 g\4 e\5( d\5) |
}

% ------ Guitar ------
gtr = \relative c {
  \Key
  \set TabStaff.minimumFret = #0
%  \guitar_riff_intro
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




%%%%%%%%% It All Goes Together Here %%%%%%%%%%%%%%%%%%%%%%

\score {
  
    \new StaffGroup = "horns" 
      \new Staff = "altosax" \with {
        instrumentName = #"Alto Sax"
        midiInstrument = #"alto sax"
      }
      \altoSax
}