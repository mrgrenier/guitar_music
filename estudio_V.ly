%
% Estudio V (Fernando Sor)
%
\version "2.18.2"
\header {
  title = "Estudio 5"
  composer = "Fernando Sor"
}
music = \relative c' {
  \key d \major
  \time 3/4
<<
  {
    \voiceOne
   \override NoteColumn #'force-hshift = #0
   d'2 d4 fis2 fis4 e2 e4 d2 d4
   cis2 cis4 d2 d4 e2 eis4 fis2 s4
   d2 d4 fis2 fis4 e2 e4 d2 d4
   e2 e4 d2 d4 cis2 \stemDown cis4 \stemUp
   b2\3 s4
   fis'2 fis4 e2 e4 d2 d4 cis2 cis4 d2 fis4
   e2 cis4 d2 d4 cis2 fis,4 dis'2 dis4 e2 b4
   cis2 cis4 d2 d4 c2 c4 g'4 e4 c4 b2 b4
   ais2 s4 d2 d4 fis2 fis4 e2 e4 d2 d4
   cis2 cis4 d2 d4 e2 eis4 fis2 s4 fis2 fis4 gis2 gis4
   ais2 ais4 b2 b4 g2 g4 fis2 fis4 fis2( fis8) a,8 b2 r4
   }
  \\
  {
   \override NoteColumn #'force-hshift = #0
   \once \override NoteHead #'transparent = ##t
   \stemDown d8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown d8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown fis'8[ d] \stemUp fis,[ d'] \stemDown fis[ d]
   \once \override NoteHead #'transparent = ##t
   \stemDown e8[ cis]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis,[ cis']
   \once \override NoteHead #'transparent = ##t
   \stemDown e[ cis]
   \once \override NoteHead #'transparent = ##t
   \stemDown d8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown d[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown cis[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemDown cis[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemDown d8\<[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis[ b\3]\!
   \once \override NoteHead #'transparent = ##t
   \stemDown d8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown e8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemUp g8[ b]
   \once \override NoteHead #'transparent = ##t
   \stemUp eis8[ b]
   \once \override NoteHead #'transparent = ##t
   \stemDown fis'8\>[ cis]
   \stemUp ais8[ cis]\!
   \stemUp fis,8[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemUp b,8[ \stemDown b'\3]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown d8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown fis'8[ d]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis,[ d']
   \once \override NoteHead #'transparent = ##t
   \stemDown fis[ d]
   \once \override NoteHead #'transparent = ##t
   \stemDown e8[ cis]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis,[ cis']
   \once \override NoteHead #'transparent = ##t
   \stemDown e[ cis]
   \once \override NoteHead #'transparent = ##t
   \stemDown d8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemUp g\4[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown d\<[ b\3]\!
   \once \override NoteHead #'transparent = ##t
   \stemDown e[ cis]
   \stemUp g[ cis]
   \once \override NoteHead #'transparent = ##t
   \stemDown e[ cis]
   \once \override NoteHead #'transparent = ##t
   \stemDown d8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown d[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown cis[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemDown cis[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemDown b\3[ d]
   \stemDown fis,[ b]
   \stemUp  b, r8
   \once \override NoteHead #'transparent = ##t
   \stemDown fis''8[ d]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis,[ d']
   \once \override NoteHead #'transparent = ##t
   \stemDown fis[ d]
   \once \override NoteHead #'transparent = ##t
   \stemDown e8[ cis]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis,[ cis']
   \once \override NoteHead #'transparent = ##t
   \stemDown e[ cis]
   \once \override NoteHead #'transparent = ##t
   \stemDown d8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown d[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown cis[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemDown cis\<[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemDown d8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis[ b\3]\!
   \once \override NoteHead #'transparent = ##t
   \stemDown fis'[ d]
   \once \override NoteHead #'transparent = ##t
   \stemDown e8[ cis]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis,[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemDown cis[ ais]
   \once \override NoteHead #'transparent = ##t
   \stemDown d8\>[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemUp fis[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown d8[ b\3]
   \once \override NoteHead #'transparent = ##t
   \stemDown cis8[ fis]
   \once \override NoteHead #'transparent = ##t
   \stemDown ais,8[ cis]\!  s4\<
   \once \override NoteHead #'transparent = ##t
   \stemUp b,8[ \stemDown a']\!
   \stemDown fis8[ a]
   \once \override NoteHead #'transparent = ##t
   \stemDown dis8[ a]
   \once \override NoteHead #'transparent = ##t
   \stemDown e'8[ g,]
   \stemDown e[ g]
   \once \override NoteHead #'transparent = ##t
   \stemDown b[ g]
   \once \override NoteHead #'transparent = ##t
   \stemDown cis8[ g]
   \stemDown e[ g]
   \once \override NoteHead #'transparent = ##t
   \stemDown cis[ g]
   \once \override NoteHead #'transparent = ##t
   \stemDown d'[ d,]
   \stemDown fis[ a]
   \once \override NoteHead #'transparent = ##t
   \stemDown d[ a]
   \once \override NoteHead #'transparent = ##t
   \stemUp e,[ \stemDown g']
   \stemDown e[ g]
   \once \override NoteHead #'transparent = ##t
   \stemDown c[ g]
   \stemDown e[ g]
   \stemDown e[ g]
   \stemDown e[ g]
  }
  \\
  {
    \relative c {
      \stemDown
      \slurDown
      \override NoteColumn #'force-hshift = #0
      b'2.( b4) s2  s2. s2. s2. s2. s2. s2.
      b2. s2. s2. s2. s2. s2. s2. s2.
      s2. s2. s2. s2. s2. s2. s2. s4 \stemUp ais'4 \stemDown s4
      b,2. e,2. a2. s2. e2.( e2.) eis2. fis2.
      b2. s2. s2. s2. s2. s2. s2. s2.
      d2. cis2. fis2. g2. e2. fis2. fis,2 e'4 b2 s4
    }
  }
  \\
  {
    \relative c {
      \stemDown
      \override NoteColumn #'force-hshift = #0
      s4 fis'2 s2. s4 fis2 s4 fis2 s4 fis2 s4 fis2 s4 g2 s2.
      s4 fis2 s4 fis2 s4 fis2 s4 g2\4 s2
      \once \override NoteColumn #'force-hshift = #-1.4
      e4
      s4 fis2 s4 fis2 s2.
      \repeat volta 2 {
         s4 fis2 s4 fis2 s4 fis2 s4 fis2 s4 fis2
         s4 fis2 s4 fis2 s2. s2. s2. s2. s2. s2. s2.
         s4 fis2 s2. s4 fis2 s4 fis2 s4 fis2 s4 fis2 s4 fis2 s4 fis2
         s4 g2 s4 s4 e4 s2. s2. s2. s2. s2. s2. s2. d2 s4
      }
    }
  }
>>
}

\new StaffGroup <<
  \new Staff {
    \clef "treble"
    \music
  }
  \new TabStaff {
     \transpose c' c
     \music
  }
>>

\score {
<<
 \music
>>

  \midi {
  }
}
