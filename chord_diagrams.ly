% 
% 
%
\version "2.19.15"
\include "english.ly"
\header {
  title = "Major Keys"
  subtitle = ""
  arranger = ""
  composer = ""
}
\include "predefined-guitar-fretboards.ly"
\layout { indent = 0.0\cm }
\layout { \override Voice.StringNumber #'stencil = ##f }

key_of_c = \chordmode {c d:m e:m f g a:m b:dim }
key_of_df = \chordmode {df ef:m f:m gf af bf:m c:dim }
key_of_d = \chordmode {d e:m fs:m g a b:m cs:dim }
key_of_ef = \chordmode {ef f:m g:m af bf c:m d:dim }
key_of_e = \chordmode {e fs:m gs:m a b cs:m ds:dim }
key_of_f = \chordmode {f g:m a:m bf c d:m e:dim }
key_of_gf = \chordmode {gf af:m bf:m cf df ef:m f:dim }
key_of_g = \chordmode {g a:m b:m c d e:m fs:dim }
key_of_af = \chordmode {af bf:m c:m df ef f:m g:dim }
key_of_a = \chordmode {a b:m cs:m d e fs:m gs:dim }
key_of_bf = \chordmode {bf c:m d:m ef f g:m a:dim }
key_of_b = \chordmode {b cs:m ds:m e fs gs:m as:dim }

mode_ionian = ^\markup { Ionian }

music = {
   \key_of_b
  \break
   \key_of_gf
  \break
   \key_of_df
   \break
   \key_of_af
  \break
   \key_of_ef
  \break
   \key_of_bf
  \break
   \key_of_f
  \break
   \key_of_c
  \break
   \key_of_g
  \break
   \key_of_d
 \break
  \key_of_a
  \break
  \key_of_e

}

<<
\new ChordNames {   
\music
}

\new FretBoards {
\music
}
>>


