\version "2.19.82"

\header {
  title = "I Never Loved A Man The Way I Love You"
  subtitle = "Funk-n-A"
  composer = "Aretha Franklin"
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
}

tenorSax = \relative c'' {
  \global
  \transposition bes,
  % Music follows here.
  
}

jazzGuitar = \relative c' {
  \global
  % Music follows here.
  
}

bass = \relative c, {
  \global
  % Music follows here.
  
}

right = \relative c'' {
  \global
  % Music follows here.
  
}

left = \relative c' {
  \global
  % Music follows here.
  
}

tenorSaxPart = \new Staff \with {
  instrumentName = "Tenor Sax"
  midiInstrument = "tenor sax"
} \tenorSax

jazzGuitarPart = \new TabStaff \with {
  stringTunings = #guitar-tuning
  midiInstrument = "electric guitar (jazz)"
  \consists "Instrument_name_engraver"
  instrumentName = "Jazz guitar"
} \jazzGuitar

bassPart = \new TabStaff \with {
  stringTunings = #bass-tuning
  midiInstrument = "acoustic bass"
  \consists "Instrument_name_engraver"
  instrumentName = "Bass"
} \bass

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \tenorSaxPart
    \jazzGuitarPart
    \bassPart
    \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
