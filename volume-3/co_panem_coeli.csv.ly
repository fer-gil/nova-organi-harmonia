\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.220
%(volume.page)

global = {
 \key f \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Panem coeli" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Panem coeli"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Panem coeli" }
    \line {}
  }
}

chantText = \lyricmode {
Pa -- nem cœ -- _ li 
\set stanza = " * " de -- dit e -- is: _ 
pa -- nem An -- ge -- ló -- rum 
man -- du -- cá -- _ vit ho -- mo. }

chantMusic = {
\tieDown   f'4 ( g'4 bes'4) bes'4 bes'4 ( g'4) bes'4 ( a'4 f'4) f'4 \divisioMinima
 a'4 ( bes'4 c''4) c''4 ( g'4) g'4 ( c''4 bes'4) a'4 ( c''4 bes'4 bes'4) f'4 ( g'4 f'4) \divisioMaxima
 f'4 ( g'4 a'\prall bes'4) bes'4 ( a'4) g'4 ( f'4) g'4 ( a'\prall bes'4) f'4 ( g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaior
 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( f'4 g'4) f'4 ( g'4 a'4) g'4 ( a'\prall bes'4) g'4 ( a'4 g'4) f'4 ( g'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \finalis

}

altoMusic = {
f'2*4/2 c'2 ~ c'2*3/2 ~ c'4 \divisioMinima
f'2*3/2 d'2 ~ d'2*3/2 f'2*4/2 c'2 ~ c'4 \divisioMaxima
d'2*4/2 c'2*4/2 d'2*3/2 ~ d'2*5/2 c'2 ~ \divisioMaior
c'2 ees'2*3/2 f'2*3/2 ~ f'2*3/2 c'2*3/2 ~ c'2*6/2 ~ c'2 \finalis
}

tenorMusic = {
bes2*4/2 ~ bes2 ~ bes2*3/2 a4 \divisioMinima
c'2*3/2 ~ c'2 bes2*3/2 ~ bes2*4/2 ~ bes2 a4 \divisioMaxima
f2*4/2 ~ f2*4/2 ~ f2*3/2 g2*5/2 ~ g2 ~ \divisioMaior
g2 bes2*3/2 a2*3/2 bes2*3/2 ~ bes2*3/2 ~ bes2*6/2 a2 \finalis
}

bassMusic = {
d2*4/2 ees2 f2*3/2 ~ f4 ~ \divisioMinima
f2*3/2 g2 ~ g2*3/2 d2*4/2 ees2 f4 \divisioMaxima
bes,2*4/2 ~ bes,2*4/2 ~ bes,2*3/2 ~ bes,2*5/2 c2 \divisioMaior
c,2 c2*3/2 d2*3/2 ~ d2*3/2 ees2*3/2 f2*6/2 ~ f2 \finalis
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
        "VIII."
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
