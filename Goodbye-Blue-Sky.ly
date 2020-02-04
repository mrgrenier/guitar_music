\version "2.18.2"
\include "bend.ly"
\header {
  title = "Goodbye Blue Sky (Pink Floyd)"
  composer = ""
    subtitle = "drop-d tuning"
  instrument = "Steel Guitar"
}

\include "english.ly"
\include "bending.ily"

\layout { \override Voice.StringNumber #'stencil = ##f }
\layout { indent = 0.0\cm }

global = {
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 108
  \stemDown
  \clef moderntab
}

% ------------
gtr = {
  <>^\markup {\bold "Ex. 1"}
  % \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #0

  <cs,\6>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <cs\5>8 <f\4>8
  <cs,\6>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <cs\5>8 <f\4>8
  <cs\5>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <cs\5>8 <f\4>8
  <cs,\6>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <ds\4>8 <b,\5>16 <as,\5>16
  <gs,\5>4 <gs,\5 b\3 >8 <b\3>8 <gs,\5 b\3 >4 <gs,\5>8 <as\3>8
  <gs,\5 as\3 >4 <gs,\5>4 <gs,\5>4 <gs,\5>4
  <gs,\5>4 <gs,\5 b\3 >8 <b\3>8 <gs,\5 b\3 >4 <gs,\5>8 <as\3>8
  <gs,\5 as\3 >4 <gs,\5>4 <gs,\5>4 <gs,\5>4
  <gs,\5>4 <gs,\5 b\3 >8 <b\3>8 <gs,\5 b\3 >4 <gs,\5>8 <as\3>8
  <gs,\5 as\3 >4 <gs,\5>8 <as\3>8 <gs,\5>8 <b\3>8 <gs,\5>8 <c'\3>8
  <cs'\2 cs,\6 >8 <f\4>8 <fs\3>8 <f\4>8 <cs\5>8 <f\4>8 <fs\3>8 <f\4>8
  <cs,\6>8 <f\4>8 <fs\3>8 <f\4>8 <cs\5>8 <f\4>8 <fs\3>8 <f\4>8
  <cs,~\6>8 <gs'\1 f'\2 cs'\3 cs,\6 >8 <cs,~\6>8 <fs'~\1 ds'~\2 c'~\3 cs,\6 >8 <fs'~\1 ds'~\2 c'~\3 cs,~\6 >8 <c'\3 ds'\2 fs'\1 cs,\6 >8 <cs,~\6>8 <f'~\1 cs'~\2 as~\3 cs,\6 >8
  <f'~\1 cs'~\2 as~\3 cs,~\6 >8 <as\3 cs'\2 f'\1 cs,\6 >8 <cs,~\6>8 <gs~\3 c'\2 ds'~\1 cs,\6 >8 <ds'\1 gs\3 cs,~\6 >8 <c'\2 gs~\3 cs,~\6 >16 <cs'\2 gs~\3 cs,~\6 >16 <c'\2 gs\3 cs,~\6 >8 <as\2 cs,\6 >8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <cs,~\6>8 <gs'\1 f'\2 cs'\3 cs,\6 >8 <cs,~\6>8 <fs'~\1 ds'~\2 c'~\3 cs,\6 >8 <fs'~\1 ds'~\2 c'~\3 cs,~\6 >8 <c'\3 ds'\2 fs'\1 cs,\6 >8 <cs,~\6>8 <f'~\1 cs'~\2 as~\3 cs,\6 >8
  <f'~\1 cs'~\2 as~\3 cs,~\6 >8 <as\3 cs'\2 f'\1 cs,\6 >8 <cs,~\6>8 <gs~\3 c'\2 ds'~\1 cs,\6 >8 <ds'\1 gs\3 cs,~\6 >8 <c'\2 gs~\3 cs,~\6 >16 <cs'\2 gs~\3 cs,~\6 >16 <c'\2 gs\3 cs,~\6 >8 <as\2 cs,\6 >8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <cs,~\6>8 <gs'\1 f'\2 cs'\3 cs,\6 >8 <cs,~\6>8 <fs'~\1 ds'~\2 c'~\3 cs,\6 >8 <fs'~\1 ds'~\2 c'~\3 cs,~\6 >8 <c'\3 ds'\2 fs'\1 cs,\6 >8 <cs,~\6>8 <f'~\1 cs'~\2 as~\3 cs,\6 >8
  <f'~\1 cs'~\2 as~\3 cs,~\6 >8 <as\3 cs'\2 f'\1 cs,\6 >8 <cs,~\6>8 <gs~\3 c'\2 ds'~\1 cs,\6 >8 <ds'\1 gs\3 cs,~\6 >8 <c'\2 gs~\3 cs,~\6 >16 <cs'\2 gs~\3 cs,~\6 >16 <c'\2 gs\3 cs,~\6 >8 <as\2 cs,\6 >8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <gs,\5>8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8
  <ds'\2 b'\1 gs,\5 >8\glissando <d'\2 as'\1 >8 <d'\2 as'\1 gs,\5 >4 <gs,\5>4 <gs,\5>4
  <gs,\5>8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8
  <ds'\2 b'\1 gs,\5 >8\glissando <d'\2 as'\1 >8 <d'\2 as'\1 gs,\5 >4 <gs,\5>4 <gs,\5>4
  <gs,\5>8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8
  <ds'\2 b'\1 gs,\5 >8\glissando <d'\2 as'\1 >8 <d'\2 as'\1 gs,\5 >8 <d'\2 as'\1 >8 <d'\2 as'\1 gs,\5 >8 <c'\2 gs'\1 >8 <c'\2 gs'\1 gs,\5 >8 <c'\2 gs'\1 >8
  <gs,\5 c'\2 gs'\1 >8 <fs'\1>8 <fs'\1 gs,~\5 >8 <fs'\1 gs,\5 >8 <gs,\5>8 <as\3 f'\2 >8 <gs,\5 as\3 f'\2 >8 <as\3 f'\2 >8
  <as\3 f'\2 gs,\5 >8 <gs\3 ds'\2 >8 <gs\3 ds'\2 gs,\5 >8 <gs\3 ds'\2 >8 <gs\3 ds'\2 gs,\5 >8 <cs'\2>8 <c'\2>8 <as\2>8
  <as,\5>8 <f'\1>8 <f\4>8 <f'\1>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <cs,\6>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <cs\5>8 <f\4>8
  <cs,\6>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <cs\5>8 <f\4>8
  <cs,\6>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <cs\5>8 <f\4>8
  <cs,\6>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <cs\5>8 <f\4>8
  <cs,~\6>8 <gs'\1 f'\2 cs'\3 cs,\6 >8 <cs,\6>8 <fs'~\1 ds'~\2 c'~\3 >8\arpeggio <fs'~\1 ds'~\2 c'~\3 cs,~\6 >8 <c'\3 ds'\2 fs'\1 cs,\6 >8 <cs,~\6>8 <f'~\1 cs'~\2 as~\3 cs,\6 >8
  <f'~\1 cs'~\2 as~\3 cs,~\6 >8 <as\3 cs'\2 f'\1 cs,\6 >8 <cs,~\6>8 <gs~\3 c'\2 ds'~\1 cs,\6 >8 <ds'\1 gs\3 cs,~\6 >8 <c'\2 gs~\3 cs,~\6 >16 <cs'\2 gs~\3 cs,~\6 >16 <c'\2 gs\3 cs,~\6 >8 <as\2 cs,\6 >8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <cs,~\6>8 <gs'\1 f'\2 cs'\3 cs,\6 >8 <cs,~\6>8 <fs'~\1 ds'~\2 c'~\3 cs,\6 >8 <fs'~\1 ds'~\2 c'~\3 cs,~\6 >8 <c'\3 ds'\2 fs'\1 cs,\6 >8 <cs,~\6>8 <f'~\1 cs'~\2 as~\3 cs,\6 >8
  <f'~\1 cs'~\2 as~\3 cs,~\6 >8 <as\3 cs'\2 f'\1 cs,\6 >8 <cs,~\6>8 <gs~\3 c'\2 ds'~\1 cs,\6 >8 <ds'\1 gs\3 cs,~\6 >8 <c'\2 gs~\3 cs,~\6 >16 <cs'\2 gs~\3 cs,~\6 >16 <c'\2 gs\3 cs,~\6 >8 <as\2 cs,\6 >8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <as,\5>8 <f\4>8 <fs\3>8 <f\4>8 <as,\5>8 <f\4>8 <fs\3>8 <f\4>8
  <gs,\5>8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8
  <ds'\2 b'\1 gs,\5 >8\glissando <d'\2 as'\1 >8 <d'\2 as'\1 gs,\5 >4 <gs,\5>4 <gs,\5>4
  <gs,\5>8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8\glissando  \ottava #1 <f'\2 cs''\1 >8 \ottava #0  \ottava #1 <f'\2 cs''\1 gs,\5 >8 \ottava #0 <ds'\2 b'\1 >8
  <ds'\2 b'\1 gs,\5 >8\glissando <d'\2 as'\1 >8 <d'\2 as'\1 gs,\5 >4 <gs,\5>4 <gs,\5>4
  <gs,\5>8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8 <ds'\2 b'\1 gs,\5 >8 <ds'\2 b'\1 >8
  <ds'\2 b'\1 gs,\5 >8\glissando <d'\2 as'\1 >8 <gs,\5 d'\2 as'\1 >4 <gs,\5>8 <ds'\2 b'\1 >8 <gs,\5>8 <e'\2 c''\1 >8
  \ottava #1 <f'\2 cs''\1 cs,\6 >8 \ottava #0 <f\5>8 <cs\4>8 <fs\3>8 <cs,\6>8 <f\5>8 <cs,\6>8 <f\5>8
  <cs,\6>8 <f\5>8 <cs\4>8 <fs\3>8 <cs,\6>8 <f\5>8 <cs,\6>8 <f\5>8
  <cs,~\6>8 <gs'\1 f'\2 cs'\3 cs,\6 >8 <cs,\6>8 <fs'~\1 ds'~\2 c'~\3 >8\arpeggio <fs'\1 ds'\2 c'\3 cs,\6 >4 <cs,~\6>8 <as'~\1 fs'~\2 ds'~\3 cs,\6 >8
  <as'\1 fs'\2 ds'\3 cs,\6 >4 <cs,~\6>8 <cs'~\3 f'~\2 gs'~\1 cs,\6 >8 <cs,\6 gs'~\1 f'~\2 cs'~\3 >4 <cs,\6 gs'\1 f'\2 cs'\3 >4
  <cs,~\6>8 <gs'\1 f'\2 cs'\3 cs,\6 >8 <cs,~\6>8 <fs'~\1 ds'~\2 c'~\3 cs,\6 >8 <fs'\1 ds'\2 c'\3 cs,\6 >4 <cs,~\6>8 <as'~\1 fs'~\2 ds'~\3 cs,\6 >8
  <as'\1 fs'\2 ds'\3 cs,\6 >4 <cs,~\6>8 <cs'~\3 f'~\2 gs'~\1 cs,\6 >8 <cs,\6 gs'\1 f'\2 cs'\3 >4 <cs,~\6 gs'\1 f'\2 cs'\3 >8 <fs'~\1 d'~\2 b~\3 cs,\6 >8
  <cs,\6 b~\3 d'~\2 fs'~\1 >4 <cs,\6 b~\3 d'~\2 fs'~\1 >4 <cs,\6 b~\3 d'~\2 fs'~\1 >4 <cs,\6 b~\3 d'~\2 fs'~\1 >4
  <cs,\6 b~\3 d'~\2 fs'~\1 >4 <cs,\6 b~\3 d'~\2 fs'~\1 >4 <cs,\6 b\3 d'\2 fs'\1 >4 <cs,~\6 gs'\1 f'\2 cs'\3 >8 <fs'~\1 d'~\2 b~\3 cs,\6 >8
  <cs,\6 b~\3 d'~\2 fs'~\1 >4 <cs,\6 b~\3 d'~\2 fs'~\1 >4 <cs,\6 b~\3 d'~\2 fs'~\1 >4 <cs,\6 fs'~\1 d'~\2 b~\3 >4
  \tempo 4=106
  <cs,\6 fs'~\1 d'~\2 b~\3 >4 <cs,\6 b\3 d'\2 fs'\1 >4 <b,\5>16 <as,\5>16 <gs,\5>8 <e,\6>4
  \tempo 4=103
  <cs,\6>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <cs\5>8 <f\4>8
  \tempo 4=101
  <cs,\6>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <cs\5>8 <f\4>8
  \tempo 4=96
  <cs,\6>8 <f\4>8 <cs\5>8 <fs\3>8 <cs\5>8 <f\4>8 <cs\5>8 <f\4>8
  \tempo 4=88
  <cs,~\6>1
  <cs,\6>1
  \bar "|."
  \pageBreak
}


music = {
  \global
  \set TabStaff.minimumFret = #0
  \gtr
}


\score {
  <<
    \new StaffGroup = "rhythm" <<
      \new TabStaff = "guitar"  \with {
        stringTunings = \stringTuning <df, af, df gf bf ef'>
      %   midiInstrumentName = #"Guitar"
        instrumentName = #"Guitar"
      }
      \fixed  c {
        \tabFullNotation
        \music
      }
    >>
  >>
  \layout {
    \override Beam.concaveness = #10000
    \context { \Staff \RemoveEmptyStaves }
    \context {
      \Score
      \override BarNumber.padding = #3
      \override RehearsalMark.padding = #2
      skipBars = ##t
    }
  }
  \midi {
    \tempo 4 = 108
  }
}


