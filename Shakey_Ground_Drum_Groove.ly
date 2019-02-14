% 
% 
%
\version "2.19.82"
\header {
  title = ""
  subtitle = "Shakey Ground (drum groove)"
  composer = ""
  tagline = \markup {
    \column {
      "Parts"
    }
  }
}

% To make the example display in the documentation
\paper {
  paper-width = 130
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

jazzChords = { }

%%%%%%%%%%%% Keys'n'thangs %%%%%%%%%%%%%%%%%

global = {
  \numericTimeSignature \time 4/4
  \tempo 4 = 91
}

Key = { \key e \minor }


% ------ Drums ------
up = \drummode {  
  \voiceOne
  s1 s1 s1 s1 |
  s1 s1 s1 s2 sn16 sn16 sn16 sn16  sn16 sn16 sn16 bd |
    % main groove
  cymcb8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hho hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hho hhc hhc hhc |
  hhc8 hhc hhc hhc hhc4 hhc4 
  cymcb8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hho hhc hho |
  hhc8  hhc hhc hhc hhc hho hhc hhc |
  cymcb8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hho hhc hhc |
  hhc8  hho hhc hhc hhc8 s8 s4  |
  cymcb8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hho hhc hho |
  hhc8  hhc hhc hhc hhc hho hhc hhc |
  cymcb8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hho hhc hhc hhc8 s8 s4  |
  cymcb8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  cymcb8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hhc hho s8 |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hho s4 |
  cymcb8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hho hho hho4 |
  cymcb8 hhc hhc hhc hhc hhc hhc hhc |
  hhc8 hhc hhc hhc hhc cymcb8 s8 hho |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8 hhc hhc hhc hhc hhc hho8 s8 |
  cymr hhc hhc hhc hhc hhc hhc hho |
  hhc hhc hhc hhc hhc hhc hho s8 | 
  cymcb8 hhc hhc hhc hhc hhc hhc s8 |
  hhc hhc hhc hhc hhc hhc hho s8 | 
  cymcb8 hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc hhc hhc hhc hhc hhc hho s8 |   
  cymcb8 hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hhc hho hhc |
  hhc8 hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  cymr hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc hhc hhc hhc hhc hhc hho s8 |   
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc hhc hhc hhc hhc hhc hho s8 |   
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  cymcb8 hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc hhc hhc hhc hhc hhc hho s8 |   
  cymr hhc hhc hhc hhc hhc hhc hho |
  hhc hhc hhc hhc hhc hhc hho s8 |   
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc hhc hhc hhc hhc hhc hho s8 |     
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc hhc hhc hhc hhc hhc cymcb s8 |   
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hho hhc hhc |
  hhc8  hhc hhc hho hhc hhc hho16 hho hho s16 |
  hhc8  hhc hhc hhc hhc hho hhc hhc |
  hhc8  hhc hhc hho hhc hho hhc hhc |
  cymr hhc hhc hhc hhc hhc hhc hhc |
  hhc hho hhc hhc hhc hhc hho s8 |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hho8  hhc hhc hhc hho hhc hhc hhc |
  hho8  hhc hhc hhc hho hho sn16 sn16 sn 16 sn16 |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hhc hho |
  hhc8  hhc hhc hhc hhc hhc hhc hhc |
  hhc8  hhc hhc hhc hhc hhc hho s8 |
  hhc4 s2. |
  
    

}
down = \drummode {
  \voiceTwo
  % Intro
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  % drums really start
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd |
  bd4 bd bd bd8. bd16 |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  db4 sn bd16 sn sn sn bd16 sn8 sn16 |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd8 sn8 sn16 sn16 sn16 sn16  |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd8 sn8 sn16 sn16 sn16 sn16  |
 bd4 sn8. bd16 bd8 bd sn16 bd16 bd8 | 
  bd4 sn bd sn |
  bd4 sn bd sn |
  bd4 sn bd sn8 tommh8 |
 bd4 sn4 bd4 sn16 bd16 bd8 |
 bd4 sn4 bd4 sn8 tommh8 |
 bd4 sn4 bd8. bd16 sn8 bd8 |
 bd4 sn4 bd8 sn8 sn16  sn16 sn16 sn16 | 
 bd4 sn4 bd4 sn4 |
 bd4 sn4 bd8 sn8 sn8 s8 |
 bd4 sn4 bd8 bd8 sn8. bd16 |
 bd4 sn4 bd4 sn8 tommh8 |
 bd4 sn4 bd4 sn4 |
 bd4 sn4 bd4 sn8 sn16 sn16 |
 bd4 sn4 bd sn8 bd16 bd16 |
 bd4 sn4 bd4 sn8 tommh8 |
 bd4 sn bd sn |
 bd4 sn bd sn |
 bd4 sn bd sn |
 bd4 sn4 bd4 sn8 sn16 sn16 |
 bd4 sn bd sn |
 bd4 sn4 bd8 bd8 sn8. bd16 |
 bd4 sn bd sn |
 bd4 sn bd sn |
 bd4 sn bd sn |
 bd4 sn bd sn |
 bd4 sn bd sn |
 bd4 sn8 bd8 bd4  sn8 sn16 sn16 |
 bd4 sn bd sn |
 bd4 sn4 bd sn8 bd16 bd16 |
 bd4 sn bd sn |
 bd4 sn bd sn |
 bd4 sn4 bd sn16 bd16 bd8 |
 bd4 sn bd sn | 
 bd4 sn4 bd4  sn8. bd16 |
 bd4 sn4 bd4 sn8 tommh8 |
 bd4 sn bd sn | 
 bd4 sn4 bd4 sn8 sn16 sn16 |
 bd4 sn4 bd4  sn8. bd16 |
 bd4 sn4 bd4 sn8 tommh8 |
 bd4 sn bd sn | 
 bd4 sn4 bd4  sn8. bd16 |
 bd4 sn bd sn | 
 bd4 sn4 bd4 sn8 sn16 sn16 |
 bd4 sn bd sn | 
 bd4 sn bd sn | 
 bd4 sn bd sn | 
 bd4 sn bd sn16 s8 sn16 | 
 bd4 sn bd sn | 
 bd4 sn bd sn | 
 bd4 sn bd sn | 
 bd4 sn4 bd4 sn8 sn16 sn16 |
 bd4 sn bd sn | 
 bd4 sn bd sn | 
 bd4 sn bd sn | 
 bd4 sn bd8 bd8  bd bd  | 
 bd4 sn bd sn | 
 bd4 sn bd sn | 
 bd4 sn4 bd4 <bd sn>16 bd16 bd8 |
 bd4 sn4 bd4 sn8 sn16 sn16 |
 bd1 |
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

      \new DrumStaff \with { instrumentName = #"Drums" }
      \drumContents
 
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