% 
% 
%
\version "2.18.2"
\header {
  title = "Wayfaring Stranger"
  subtitle = "Tunning (D A D G A D)"
  arranger = ""
  composer = ""
}

\paper {
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}
\layout { \override Voice.StringNumber #'stencil = ##f }

upper = \relative c' {
  \set midiInstrument = #"flute"
  \key d \minor
  \voiceOne
  \stemUp
   s4 d4 d4 \acciaccatura g8 a4\3
   \acciaccatura g8 a4.\3 d8 ~ d8 a4\3 <a\3 d>8 ~ <a\3 d>4
   <g d'>4 \acciaccatura g8 <a\3 d>4 <g d'>4
   e8( f16 e d8) a( c) d4.
   r4 a'8\2 a8\3 d,( f) \acciaccatura g8 a4\3
   g4. d'8 ~ d8 a4 g8 ~ 
   g4 s4 f8 g4.
   <e\4 a\3>4. a8\2 ~ a\2 a\3 e'4\1 ~ e8
   a,4 g8 d( f) g( a\3)
   g8( a4\3) a8\2 d8\1 c4.
   d8 c4. <a\3 d\1>8( g4) g8
   c2 r8 d,4.
}

lower = \relative c {
  \key d \minor
  \voiceTwo
  s1
  d4 d'4 d,4 d'4 
  d,4 d'4 d,4 d'4 
  d,2.f4
  d4 d' s2
  g,4 d'4 g,4 d'4
  g,4 d'2 a4
  a e' a, e' 
  a, d s2
  d,4 d'2 d4 ~
  d2. f4
  e8( f16 e16 d8) a( c4) f,
  d4 d'4 s2
}

music = \relative c {
  \key d \major
  \time 4/4
  {
   \tabFullNotation 
   <<
    \context TabVoice = "upper" \upper
    \context TabVoice = "lower" \lower
   >>
 }
}

\new TabStaff {
  \set TabStaff.stringTunings = #guitar-dadgad-tuning
  \transpose c c,
  
    \music
}

\score {
  \music
  \midi {
    \set Staff.midiInstrument = #"acoustic guitar (nylon)"
    \tempo 4 = 70
  }
}
