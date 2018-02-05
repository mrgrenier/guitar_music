% 
% 
%
\version "2.18.0"
\header {
  title = "Sunflower River Blues"
  subtitle = "Open D tunning (D A D F# A D)"
  composer = "John Fahey"
}

\layout { \override Voice.StringNumber.stencil = ##f }

music = {
  \time 4/4
  \stemDown
  d,4 d' d, d'
  d,4 d' d, d'

  \repeat volta 2 {
    d,8[ a'']( <b d,>) d d,,[ fis''] d, a'
    <d,, e''>4 <d' d'>4 <d, b''>8[ d''] d, a'
    <d,, d''>4 d' d,8[ a'']( <b d,>) d 
    d,,4 d' d, d'
    d,8[ a'']( <b d,>) d d,,[ fis''] d, a'
    <d,, e''>4 <d' d'>4 <d, b''>8[ d''] d, a'
    e,4 e' e,8[ a']( <e b'>) e' 
    e,,4 e' e, e'
    d,8[ a'']( <b d,>) d d,,[ fis''] d, a'
    <d,, e''>4 <d' d'>4 <d, b''>8[ d''] d, a'
    <d,, d''>4 d' d,8[ a'']( <b d,>) d 
    d,,4 d' d, d'
    fis,4 fis'8\4[ a] fis,[ d''] fis,\4[ a]
    <fis, d''>4 fis'8\4[ a] fis,[ d''] fis,\4[ a]
    f,4 f'8\4[ a] f,[ d''] f,\4[ a]
    <f, d''>4 f'8\4[ a] f,[ d''] f,\4[ a]
    e,4 e'8\4[ a] e,[ d''] e,\4[ a]
    <e, d''>4 e'8\4[ a] e,[ d''] e,\4[ a]
    <d,, d''>4 d'8\4[ a']( <b d,,>) d d,\4[ a']
    <d,, d''>4 d' d, d'
  }
  \repeat volta 2 {
    b4 d8\4[ b'] b,[ d'] d,\4[ b']
    b,8[ d'] d,\4[ b'] b,[ d'] d,\4[ b']
    ais,4 d8\4[ ais'] ais,[ d'] d,\4[ ais']
    ais,8[ d'] d,\4[ ais'] ais,[ d'] d,\4[ ais']
    <d,, d''>4 d'8\4[ a']( <b d,,>) d d,\4[ a']
    <d,, d''>4 d'8\4[ a']( <b d,,>) d d,\4[ a']
    b,4 d8\4[ b'] b,[ d'] d,\4[ b']
    b,8[ d'] d,\4[ b'] b,[ d'] d,\4[ b']
    ais,4 d8\4[ ais'] ais,[ d'] d,\4[ ais']
    ais,8[ d'] d,\4[ ais'] ais,[ d'] d,\4[ ais']
    <d,, d''>4 d'8\4[ a']( <b d,,>) d d,[ a']
    a,4 e' a,8[ e''] e,[ a]
    <e' d,,>( \glissando fis) <d, d'>4 <d, b''>8[ d''] d,[ a']
    <d,, d''>4 d'8\4[ fis] e, \glissando <fis a'> d'[ fis]
    <d, d''>4 d'8\4[ fis] e, \glissando <fis a'> d'[ fis]
    a,4 e' a,8[ e''] e,[ a]
    <e' d,,>( \glissando fis) <d, d'>4 <d, b''>8[ d''] d,[ a']
    <d,, d''>4 d'8\4[ fis] e, \glissando <fis a'> d'[ fis]
    \set TabStaff.minimumFret = #7
    d,4 d' d,8\4[ fis''] <d, a''>[ fis']
    <d,, a'''>4 d'8\4[ fis'] d,,[ a'''] d,,[ fis']
    <d,, a'''>8[ b'''] d,,\4[ a''] d,,,[ fis''] d,4
    <d, a'''>8[ b'''] d,,\4[ a''] d,,,[ fis''] d,4
    <d, d''>4 d'\4 d,8[ a'''] d,,[ fis']
    <d,, a'''>4 d'8\4[ fis'] d,,[ a'''] d,,[ fis']
    <d,, a'''>8[ b'''] d,,\4[ a''] d,,,[ fis''] d,4
    <d, c'''>4 <d' b''> <d, a'''>8[ fis''] d,4
    \set TabStaff.minimumFret = #0
    <d, d''>4 d'8\4[ a'] d,,[ d''] d,[ a']
    fis,4 fis'8\4[ a] fis,[ d''] fis,\4[ a]
    f,4 f'8\4[ a] f,[ d''] f,\4[ a]
    <d,, d''>4 d'8\4[ a']( <b d,,>) d d,[ a']
    <d,, d''>4 d'8\4[ a']( <b d,,>) d d,[ a']
    fis,4 fis'8\4[ a] fis,[ d''] fis,\4[ a]
    f,4 f'8\4[ a] f,[ d''] f,\4[ a]
    <d,, d''>4 d'8\4[ a']( <b d,,>) d d,[ a']
    <d,, d''>4 d'8\4[ a']( <b d,,>) d d,[ a']
    
  }
}



\new TabStaff {
  \set TabStaff.stringTunings = #guitar-open-d-tuning
  \relative c {
    \tabFullNotation
    \music
  }
}

