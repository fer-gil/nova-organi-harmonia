\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.237
%(volume.page)

global = {
 \key f \major
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Simon Joannis" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Simon Joannis"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Simon Joannis" }
    \line {}
  }
}

chantText = \lyricmode {
Si -- mon Jo -- án -- _ nis, 
\set stanza = " * " dí -- li -- gis me plus _ his? 
Dó -- mi -- _ ne, tu ó -- mni -- a no -- sti: _ 
tu _ _ scis, Dó -- _ mi -- ne, 
qui -- a a -- _ mo te. }

chantMusic = {
\tieDown   f'4 ( f'4 g'4) f'4 f'4 ( a'4) a'4 ( g'4) ~ g'4 ( f'4 g'4) g'4 ( f'4) \divisioMinima
 f'4 ( a'4) a'4 ( g'4 a'4) g'4 ( f'4 g'4) d'4 e'4. d'4 ( e'4 c'4) f'4. f'4 \divisioMaxima
  f'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( g'4) a'4 ( b'4) g'4 ( f'4) \divisioMinima
  b'4 ( b'4 g'4)  b'4 b'4 ( a'4) a'4 f'4 ( a'4) a'4 ( g'4) a'4 ( f'4) \divisioMaxima
  c''4 ( a'4) c''4 ( b'4.) a'4 ( b'4 g'4 f'4) f'4 ( g'4 a'4) \divisioMinima
 a'4 ( g'4) a'4 ( f'4 g'4) f'4 ( e'4 f'\prall g'4 f'4 g'4) g'4 ( f'4) \divisioMaior
 f'4 ( d'4 e'\prall f'4) d'4 ( c'4)  f'4 ( ees'4) g'4 ( b'4 g'4 a'\prall b'4) f'4 ( g'4 f'4) f'4 \finalis

}

altoMusic = {
c'2*4/2 d'2*3/2 ~ d'2*4/2 ~ d'2 ~ \divisioMinima
d'2 ~ d'2*3/2 ~ d'2*4/2 c'2*9/4 bes2*3/4 a4 f'2 ~ f'2*4/2 d'2 ~ d'2*3/2 f'2*4/2 c'2 ~ c'2*3/2 ~ c'4 f'2 ~ f'2*5/4 ~ f'2*4/2 e'2*3/2 \divisioMinima
d'2*5/2 c'2*3/2 ~ c'2*3/2 ~ c'2 \divisioMaior
bes2*6/2 c'2 d'2 ~ d'2*3/2 ~ d'2*3/2 c'4 \finalis
}

tenorMusic = {
a2*4/2 ~ a2*3/2 ~ a2*4/2 ~ a2 ~ \divisioMinima
a2 f2*3/2 g2*4/2 ~ g2*9/4 f2*3/4 ~ f4 c'2 bes2*4/2 a2 bes2*3/2 c'2*4/2 ~ c'2 bes2*3/2 a4 ~ a2 g2*5/4 f2*4/2 ~ f2*3/2 ~ \divisioMinima
f2*5/2 ~ f2*3/2 e2*3/2 f2 ~ \divisioMaior
f2*6/2 ~ f2 ~ f2 g2*3/2 bes2*3/2 a4 \finalis
}

bassMusic = {
f2*4/2 ~ f2*3/2 e2*4/2 d2 \divisioMinima
c2 bes,2*3/2 ~ bes,2*4/2 a,2*9/4 d2*3/4 ~ d4 ~ d2 ~ d2*4/2 ~ d2 g2*3/2 f2*4/2 ~ f2 ~ f2*3/2 ~ f4 d2 ~ d2*5/4 ~ d2*4/2 c2*3/2 \divisioMinima
bes,2*5/2 a,2*3/2 ~ a,2*3/2 ~ a,2 \divisioMaior
g,2*6/2 a,2 bes,2 ~ bes,2*3/2 ~ bes,2*3/2 f4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Communion"
        "VI"
      }
      \new Staff = up <<
        \new Voice = "chant" {
          \voiceOne \global \chantMusic
        }
        \new Voice {
          \voiceTwo \global \altoMusic
        }
      >>

      \new Staff = down <<
        \clef bass
        \new Voice {
          \voiceOne \global \tenorMusic
        }
        \new Voice {
          \voiceTwo \global \bassMusic
        }
	\new Voice {
        \voiceThree \global \voiceLines
        }
      >>
    >>
    \new Lyrics \lyricsto chant {
      \chantText
    }
  >>
  \layout{
  }
  \midi{
    \tempo 4 = 125
  }
}
