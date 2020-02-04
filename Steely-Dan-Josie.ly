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


% ############ Rhythm Section #############

% ------ Guitar 1 ------


gtr_solo_b = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #10
\break
  r4 c'4\2\bendAfter #+6 ~ c4\2 d8\1  <e\1>8
  fs4.\1 \bendAfter #+6   <fs\1>8  <e\1>4  <d\2>8    <e~\1>8\prall
  <e\1>8  <b\2>8 ~ <b\2>4 r8 <d~\2>8 <d\2>8  <d,\4>8
  r4   <cs'\2>8  <ds,\4>8 r8 <g\3>8 r8 <e~\4>8
  <e\4>8 <a\3>8 <g'\1 d\2 >4\staccato  <e\1>4 <d~\2>4\prall
  <d\2>4   <e\1>8  r8   <d\2>8  r8 r8   <cs~\2>8\prall
  <cs\2>8  <e\1>8  <a,\3>8  <cs\2>8  <b\2>8 <e,~\4>8\prall <e\4>4
  \times 2/3 {r8 <e\4>8 <g\3>8 <a\2>8\glissando <b\2>8 <c\2>8_"H" } <\parenthesize b\2>8 <b\2>16 <c~\2>16 <c\2>16 cs16\2 \bendAfter #+6  <cs~\2>8
  <cs~\2>2 <cs\2>4 r8  <g'~ d~\2 >8
  <g\1 d\2 >16  r8. r8   <e~\1>8\prall <e\1>4 <e\1>8 r8
  <d\2>8  <b\2>8   <d\2>8  r8   ds4\2\bendAfter #+6 ~  <ds\2>4
  r8 <b\3>8   <a'\1 \parenthesize e\2 >8  r8 <a,\3>8   <e'\2>8  r8   <d\2>8
  <fs\1>8  r8   <e\2>8    <g~\1>8\prall    <g\1>4    <a~\1>4
  <a\1>4 r4 <a\1>8. <g\1>16 <e~\2>4\prall
  <e\2>8    <fs~\1>8    <fs\1>4    <e\2>8    <d\2>8    <e\2>8    <e~\2>8\prall
  <e\2>4.  \times 2/3 {<a,\3>8   <d\2>8  <g,~\3>8\prall } <g~\3>8 <g\3>4
  r8-\tag #'texts ^\markup {"Chorus"} <b\2>8 r8 <g~\3>8\glissando <g\3>4 r4
%  r1-\tag #'texts ^\markup {"Outro"}
%  r1
  %   r2-\tag #'texts ^\markup {"Slight distortion"} r8 <b'\2>16\glissando   <d~\2>16    <d\2>16  r16 <b'\2>8
  %   <b'\2>8\glissando r4. r4 <\bendAfter #+6 a'\2>8 <g'\2>16 <e'~\3>16
  %   <e'\3>8 r8 r4 r2
  %   <\bendAfter #+6 a'\3>4.   <d\2>16  <\bendAfter #+6 a'~\3>16 <a'\3>16   <d\2>16  <\bendAfter #+6 a'\3>8   <d\2>32  <\bendAfter #+6 a'\3>16.   <d\2>32  <\bendAfter #+6 a'\3>16.
  %     <d\2>16  <\bendAfter #+6 a'\3>16   <d\2>16  <\bendAfter #+6 a'\3>16   <d\2>16  <\bendAfter #+6 a'\3>16 <\bendAfter #+6 a'\3>16 r16 <\bendAfter #+6 a'\3>8 <g'\3>16 <e'\4>16 <g'\3>4\prall
  %   <e'\3>16\glissando <d'\3>16 <b\4>8 <d'\3>2\prall <e'\3>8\staccato <b'\1 g'\2 >8
  %   <e'\3>8 r4.   <\bendAfter #+6 a~\1>2
  %     <a\1>4    <\bendAfter #+6 a\1>8.    <g\1>16    <e\2>4    <d\2>8  <b'~\3>8
  %   <b'\3>4 r4 r8 <\bendAfter #+6 g'~\3>4.
  %   <g'\3>1
%  r1
%  r1
  %   r2.   <\bendAfter #+6 d\2>4
  %     <e~\1>2\prall    <e\1>8    <d\2>16_"H"  <b'\2>16 <g'\3>4
%  r1
  %   \times 2/3 {r8 <cis'\4>8 <d'\4>8 <e'\4>8 <fs'\3>8 <g'\3>8 <a'\3>8 <b'\2>8   <cis~\2>8  }   <cis\2>16    <d\2>16    <d\2>8
  %     <d~\2>4\prall    <d\2>16    <cis\2>16  <b'\2>16 <a'\3>16 <b'\2>4. <a'\3>16 <g'\3>16\glissando
  %   r2. <\parenthesize d'\2 \parenthesize b\3 >4
  %   r4 <\parenthesize d'~\2>4 <d'\2>8 <d'~\2>8 <d'\2>16 <d'~\2>16 <d'\2>8
  %   \times 2/3 {<d'\2>16 <d'\2>16 <d'\2>16 <d'\2>16 <d'\2>16 <d'\2>16 <d'\2>16 <d'\2>16 <d'\2>16 <d'\2>16 <d'\2>16 <d'\2>16 } <d'\2>8. <e'~\2>16\prall <e'~\2>4
  %   <e'\2>4 <d'\2>16 <d'\2>16 <d'~\2>8\prall <d'\2>4 r4
  %   r2.-\tag #'texts ^\markup {"Fade Out"} <\parenthesize d'\2 \parenthesize b\3 >4
  %   r8   <b\1 g\2 >8\glissando  <\parenthesize b'\1 \parenthesize g'\2 >4 r2
 % r1
  r1
 % r1
  \bar "|."
  \pageBreak
}


gtr_solo_a = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #10
  <>^"Solo"
  r4 c'\startBend\2 d\stopBend d8\1 e\1 |
  \set TabStaff.minimumFret = #12
  \grace{ fs16\1\startBend } g16\1\stopBend\startBend fs16\stopBend\startBend g4\stopBend\startBend fs8\stopBend
   e4 d8\2 e8~ |
  e8 b\2 r4 r8 d8\2 d8\2 d,8 |
  r4 cs'8\2 ds,8 r8 g8 r8 e8~ |
  e8 a8\3 r4 e'8 r8 d4~ |
  d4 e8 r8 d8  r8 r8 cs8 ~ |
  cs8 e8 a,8 cs8 b8 e,4.~ |
  \tuplet 3/2 { e8 e8 g8} \tuplet 3/2 { a8\3 b8\2 c8} \tuplet 3/2 { r8 b8 c8} \grace {c8\startBend} d4\stopBend ~ |
  d8\stopBend\startBend c8\startBend d2\stopBend r8 <cs g'>8 |
  r4 r8 e8 ~ e4 e8 b8 |
  d8\2 b8\3 d8.\2[ b16\3] ds8\startBend e4.\2\stopBend |
  \grace{ b4\3\startBend} cs\3\stopBend a'8\1 r8 a,8\3 e'8\2 r8 \grace{ cs8\2\startBend } d8\stopBend 
  fs4\1 e8\2 g8~g4 a8.\startBend b16~|b4\stopBend
  r4 \grace{ a\1\startBend} b16\stopBend\startBend a8\stopBend g16 e4\2~ |e8\2
  \grace{ fs16\1\startBend } g8\1\stopBend\startBend fs16\stopBend\startBend g16\stopBend\startBend fs8\stopBend e8\2( d\2) e8\2 e8\2 ~|
  %e4\2~ \tuplet 3/2 { e8\2 a,8 d8} g,2 | 
  <e\2>4.  \times 2/3 {<a,\3>8   <d\2>8  <g,~\3>8\prall } <g~\3>8 <g\3>4

r8 b8 e,4 r2 |
}

gtr = \relative c' {
  \Key
  \override Beam.concaveness = #10000

  \set TabStaff.minimumFret = #0
  %\set TabStaff.restrainOpenStrings = ##t
  \clef moderntab
  \gtr_solo_a
  \gtr_solo_b
}

guitar = {
  \tabFullNotation
  \global
  <<
    \gtr
  >>
}

gtrHarmony = \chordmode {
  \jazzChords
  s1
  e2:min7 s2 e2:min7 s2 e2:min7 s2 e2:min7 s2
  e1:min7 e:min7 a4./d g2/c s8
  d4./g c2/f s8
  e1:min7 e1:min7 a1:9
  g4/c d4/g c2/f
  e1:min7
  d2/g e2/a
  e1:min7
  s1
  s1
  e2:min7 s2 e2:min7 s2 e2:min7 s2 e2:min7 s2
  e1:min7 e:min7 a4./d g2/c s8
  d4./g c2/f s8
  e1:min7 e1:min7 a1:9
  g4/c d4/g c2/f
  e1:min7
  d2/g e2/a
  e1:min7

}

%%%%%%%%% It All Goes Together Here %%%%%%%%%%%%%%%%%%%%%%

\score {
  <<

    \new StaffGroup = "rhythm" <<
      \new ChordNames = "chords" \with {
        midiInstrument = #"rock organ"
      }
      \gtrHarmony
      \new TabStaff = "guitar"  \with {
        midiInstrument = #"distorted guitar"
        % stringTunings = \stringTuning <b,, e, a, d fs b>
      }
      \guitar
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



