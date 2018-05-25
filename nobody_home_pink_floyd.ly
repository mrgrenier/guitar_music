% 
% 
%
\version "2.18.2"
\include "english.ly"
\include "articulate.ly"
\header {
  title = "Nobody Home"
  subtitle = ""
  arranger = ""
  composer = "Roger Waters"
}

piano_right_hand = {
  <e' c e,>2. a,4 |
  <e' c e,>2 \tuplet 3/2 { <e c>4 d8~ } \tuplet 3/2 {d8 c d} |
  <e g,>8 <c e,>4 g8 <c e,>2 |
  <fs, c>1 |
  <f a,>1 |
  \tuplet 3/2 { <f af,>4 c4 af4 } f2 |
  g1 ~ |
  g1 |
  af1 ~ |
  af4. e8 <e' af,>8 e,8 <d' af>8 e,8 |
  a2.  f4 ~ |
  f2 <a f>8 f8 f4 |
  g8 g4 r8 r2 |
  r2 <a f'>2 |
  g2 r2 |
  r2. <g c>4 |
  <gs b>1 |
  <gs b>4. gs8 b4 gs4 |
  a1 |
  a1 |
  g1 ~ |
  g1 |
  g2 g4. g8 |
  g2 ~ g4. g8 |
  <as e'>1 |
  <e' g bf>2 <e bf' c>2 |
  a,1 |
  af 1 |
  g2 <gs d'>2 |
  <a c>2 <a c d>2 |
  <g b d>1 |
  \tuplet 3/2 { <d' gs>4 a'4 b4 } <d, b' e>4 e'4 |
  <e, c' e>1 ~ |
  <e c' e>2 a4 <e c'>4 |
  <a c e>1 |
  <a c e>2 <e g e'>4 <e g e'>4 |
  <d a' d>1 |
  <d af' d>1 |
  <c g' c>2 r2 |
}

piano_left_hand = {
  <a a,>1 |
  gs |
  g2. c,4 |
  d2 d,4 e4 |
  f1 |
  f1 | 
  c'1 ~ |
  c2 c,4 d4 |
  e1 ~ |
  e1 |
  f1 ~ |
  f4. f8 ~ f2 |
  c4. g'8 c4. g8 |
  c,2 c'4 c4 |
  c2 c,2 ~ |
  c4. c8 c4 c'8 c,8 |
  e4. b'8 e2 | 
  e4. e,8 b'4 e4 |
  f1 |
  f4 r4 f8 c8 a8 f8 | 
  c'4. c,8 c4. c'8 |
  c4. c,8 c4. c8 |
  c'4. c,8 c2 |
  c'4. c,8 c2 |
  c'4. c,8 c4. c8 |
  c'4. c,8 c2 |
  f4. c8 c4. c8 |  
  f4. c8 c4. c8 |  
  c'2 b2 |
  a2 fs2 |
  g1 | 
  gs1 |
  a1 ~ |
  a2 a'4 af4 |
  g1 ~ |
  g4. g4 g4 g8 |
  fs1 |
  f1 |
  e4. c8 c4. c8 |
  c4. c8 c4. c8 |
  c4. c,8 c4. c8 |
  c4. c8 c'4 c4 |
  c1 |
  c2 c,4 d4 |
  e1 |
  e1 |
  f1 |
  f2 f2 |
  c4. c8 c4. c8 |
  c4. c8 f2 | 
  c1  ~ |
  c4. g'8 c2 |
  e,1 |
  e1 | 
  f1 | 
  f2 f2 |
  c2 c2 |
  c'2 c2 |
  c,1  
  c4. c'8 c2 |
  c,1 |
  c4. c8 c4 c4 |
  f4. f8 f4. f8 |
  f1 |
  c'2 b2 |
  a2 d,2 |
  g2 g2 |
  e1 |
  a1 ~ |
  a2 a4 af4 | 
  g1 | 
  g1 | 
  fs1 |
  f1 |
  c4. c8 c4. c'8 |
  c4. c,8 c4. c8 |
  c4. c8 c4. c'8 |
  c4. c,8 c4 c4 |
  c2 c2 |
  c1 |
  e1 |
  e1 ~ |
  e1 |
}

bass_section = {
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  c,1 | c2 c4 d4 | e1 ~ | e1 |
  f,1 | f1 | c1 | c1 | c1 ~ c1 |
 
}

brass_section = {
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | <g c f>1 ~ |
  <g c f>1 |
  <c c'>2 <fs, e'>2 |
  <a a'>2 <e d'>2 |
  <a g'>1 ~ |
  <a g'>1 |
  <a a'>1 |
  r1 | r1 | r1 |
  r1 | r1 | r1 |
  r2 <g c f>2 |
  <c e g>1 ~ |
  <c e g>2 <g c f>4 <g c f>4 |
   r1 | r1 | r1 |
  r1 | r1 | r1 |
   r1 | r1 | r1 |
  r1 | r1 | r1 |
  r1 | r1 | r1 |
  r1 | r1 | r1 |
  r1 | r1 | r1 |
  r1 |
  <c e>2 <fs, b>2 |
  <a e'>2 <e d'>2 |
  <a d>1 |
  <fs b>1 |
  r1 | r1 | r1 |
  r1 | r1 | r1 |
  r1 | r1 | r1 |
  r1 | r1 | r1 |
  r1 | r1 | r1 |
}

string_section = {
   r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  bf'1 ~ |
  bf2 c2 |
  f,1 ~ |
  f1 |
  r1 | r1 | r1 | r1 |
  <c' a>1 ~ |
  <c a>1 ~ |
  <c a>1 |
  r1 | r1 | r1 | r1 |
  r2 <f c f,>2 |
  <g, c e>1 ~ |
  <g c e>2 <f' c f,>4 <f c f,>4 |
  <c, e>1 ~ |
  <c e>1 |
  <gs' b e>1 ~ |
  <gs b e>1 |
  <a c f>1 ~ |
  <a c f>1 |
  <g c e>1 ~ |
  <g c e>2 <a c f>2 |
  <g c e>1 ~ |
  <g c e>1 |
  <gs b e>1 ~ |
  <gs b e> |
  <a c f>1 ~ |
  <a c f>1 |
  <g c e>1 ~ |
  <g c e>1 |
  <g c e>1 ~ |
  <c, g' c e>1 ~ |
  <c g' c e>1 |
  <bf' c e>2 <c c e>2 ~ |
  <c c e>1 |
  <a c f>1 |
  <g c e>2 <gs b e>2 |
  <a c e>2 <a c fs>2 |
  <g d' g>1 |
  <gs b e>1 |
  <a c e>1 ~ |
  <a c e>1 ~ |
  <a c e>1 ~ |
  <a c e>1 | 
  r1 | r1 | r1 |
  r2 <a c f>2 |
  <g c e>1 ~ |
  <g c e>2 <a c f>4 <a c f>4 |
  <g c e>1 ~ |
  <g c e> 1 |
  r1 | r1 | r1 
}

strings_alt = {
   r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r2 r4 c4 ~ |
  c1 ~ |
  c1 ~ |
  c1 ~ |
  c1 ~ |
  c1 ~ |
  c1  |
  r1 | r1 | r1 | r1 |
  a1 ~ |
  a1 ~ |
  a1 | 
  r1 | r1 | r1 | r1 |
  r2 <f f'>2 |
  <c' e>1 ~ |
  <c e>2 <f f'>4 <f f'>4 |
  <c e>1 ~ | 
  <c e>1 |
  <e, e'>1 ~ |
  <e e'>1 |
  <f f'>1 ~ |
  <f f'>1 |
}

\score {
<<
  \new Staff = "up" { 
    \key c \major
    \time 4/4 
       \set Staff.midiInstrument = #"bright acoustic"
     \set Staff.midiMinimumVolume = #0.2
     \set Staff.midiMaximumVolume = #0.81
    \relative c' {
       \piano_right_hand
    }
  }
   \new Staff = "bottom" { 
    \clef bass
     \set Staff.midiMinimumVolume = #0.2
     \set Staff.midiMaximumVolume = #0.62
     \relative c' {
         \piano_left_hand
     }
   }
   \new Staff {
       \clef bass
      \key c \major
      \set Staff.instrumentName = \markup {"Bass" }
      \set Staff.midiInstrument = #"electric bass (finger)"
      \set Staff.midiMinimumVolume = #0.2
      \set Staff.midiMaximumVolume = #0.62
      \new Voice \relative c' {
          \bass_section
      }
  }
   \new Staff {
      \key c \major
      \set Staff.instrumentName = \markup {"Brass" }
      \set Staff.midiInstrument = #"brass section"
      \set Staff.midiMinimumVolume = #0.2
      \set Staff.midiMaximumVolume = #0.43
      \new Voice \relative c' {
          \brass_section
      }
  }
  \new Staff {
      \key c \major
      \set Staff.instrumentName = \markup {"Strings" }
      \set Staff.midiInstrument = #"string ensemble 1"
      \set Staff.midiMinimumVolume = #0.2
      \set Staff.midiMaximumVolume = #0.56
      \new Voice \relative c' {
          \string_section
      }
     }
     
     \new Staff {
      \key c \major
      \set Staff.instrumentName = \markup {"Strings" }
      \set Staff.midiInstrument = #"string ensemble 2"
      \set Staff.midiMinimumVolume = #0.2
      \set Staff.midiMaximumVolume = #0.56
      \new Voice \relative c' {
          \strings_alt
      }
     }
>>
 \layout { }
  \midi {
    \tempo 4 = 106
  }
} 


