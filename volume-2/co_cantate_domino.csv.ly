\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.60
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Cantate Domino" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Cantate Domino"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Cantate Domino" }
    \line {}
  }
}

chantText = \lyricmode {
Can -- tá -- te Dó -- mi -- _ no, 
\set stanza = " * " al -- le -- lú -- ia: 
can -- tá -- te Dó -- mi -- no, be -- ne -- dí -- ci -- te no -- men e -- jus: 
be -- _ _ ne nun -- ti -- á -- te de di -- e in di -- em sa -- lu -- tá -- re e -- jus, 
al -- le -- lú -- ia, al -- le -- _ _ lú -- ia. }

chantMusic = {
\tieDown   g'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 ( bes'4 a'4) bes'4 ( a'4 g'4 a'4) a'4 ( g'4) \divisioMinima
 g'4 ( a'\prall bes'4) f'4 ( a'4 g'4) g'4 ( a'4 g'4) g'4 \divisioMaxima \forceBreak

 g'4 bes'4 bes'4 ( a'4) bes'4 ( d''4) d''4 ( c''4) bes'4 ( c''4 bes'4) \divisioMinima
 bes'4 bes'4 ( a'4) c''4 bes'4 ( a'4) g'4 g'4 ( a'\prall bes'4 a'4 bes'4) a'4 ( g'4 \forceBreak
) g'4 ( a'4 g'4) g'4 \divisioMaxima
 d''4 ( bes'4) c''4 ( a'4.) bes'4 ( c''4 bes'4 c''4) g'4 g'4 ( a'\prall bes'4) bes'4 ( g'4) bes'4 ( c''4 d''4 c''4 bes'4 a'4 bes'\prall c''4 bes'4 c''4) c''4 ( bes'4) \divisioMinima \forceBreak

 bes'4 c''4 g'4 g'4 ( \once \tweak #'font-size #-4 f' ) g'4 ( a'\prall bes'4 a'4 g'4 f'4 g'4) g'4 ( f'4) \divisioMinima
 g'4 ( a'4 g'4) f'4 ( ees'4) g'4 ( a'4 g'4) f'4 ( g'4) g'4 ( a'4 g'4) g'4 \divisioMaior \forceBreak

 d''4 ( ees''4) d''4 d''4 ( c''4 d''4) bes'4 ( g'4) \divisioMinima
 bes'4 ( c''4) a'4 ( bes'4 c''4) d''4 ( bes'4) c''4 ( bes'4 a'4) g'4 ( a'\prall bes'4 a'4 bes'4) a'4 ( g'4) \finalis

}

altoMusic = {
r4 f'4 ~ f'2 g'2 ~ g'2*3/2 ~ g'2*4/2 d'2 \divisioMinima
f'2*3/2 ~ f'2*3/2 d'2*3/2 ~ d'4 ~ \divisioMaxima
d'2 f'2 ~ f'2 ~ f'2 d'2*3/2 ~ \divisioMinima
d'4 f'2 ~ f'4 ~ f'2*3/2 d'2*5/2 ~ d'2 c'2*3/2 d'4 \divisioMaxima
f'2 ~ f'2*5/4 d'2*5/2 ~ d'2*3/2 ~ d'2 g'2 f'2*3/2 ~ f'2 ees'2*3/2 d'2 ~ \divisioMinima
d'4 c'2 ~ c'2 d'2 ~ d'2 ~ d'2*3/2 c'2 \divisioMinima
d'2*3/2 c'2 ~ c'2*5/2 ~ c'2*3/2 bes4 \divisioMaior
f'2*3/2 d'2*3/2 ~ d'2 \divisioMinima
ees'2 ~ ees'2*3/2 d'2 ~ d'2*3/2 ees'2*5/2 d'2 \finalis
}

tenorMusic = {
r4 d'4 ~ d'2 ~ d'2 ~ d'2*3/2 ~ d'2*4/2 bes2 ~ \divisioMinima
bes2*3/2 c'2*3/2 ~ c'2*3/2 bes4 \divisioMaxima
r4 bes4 c'2 bes2 a2 g2*3/2 \divisioMinima
bes4 c'2 ~ c'4 d'2*3/2 ~ d'2 c'2*3/2 bes2 a2*3/2 bes4 ~ \divisioMaxima
bes2 d'2*5/4 ~ d'2*5/2 c'2*3/2 bes2 ~ bes2 ~ bes2*3/2 f2 g2*3/2 ~ g2 ~ \divisioMinima
g4 ~ g2 a2 bes2 g2 ees2*3/2 d2 ~ \divisioMinima
d2*3/2 c2 d2*5/2 ~ d2*3/2 ~ d4 \divisioMaior
bes2*3/2 a2*3/2 bes2 ~ \divisioMinima
bes2 g2*3/2 ~ g2 a2*3/2 bes2*5/2 ~ bes2 \finalis
}

bassMusic = {
r4 r4 c'2 bes2 a2*3/2 g2*4/2 ~ g2 \divisioMinima
d2*3/2 ~ d2*3/2 g2*3/2 ~ g4 ~ \divisioMaxima
g4 ~ g4 f2 d2 f2 g2*3/2 ~ \divisioMinima
g4 f2 d4 ~ d2*3/2 g2 ~ g2*3/2 ~ g2 ~ g2*3/2 ~ g4 \divisioMaxima
d2 ~ d2*5/4 g2*5/2 ~ g2*3/2 ~ g2 ees2 d2*3/2 ~ d2 c2*3/2 g2 \divisioMinima
r4 ees2 d2 bes,2 ~ bes,2 ~ bes,2*3/2 a,2 \divisioMinima
bes,2*3/2 c2 a,2*5/2 g,2*3/2 ~ g,4 \divisioMaior
d2*3/2 f2*3/2 g2 \divisioMinima
c2 ~ c2*3/2 bes,2 ~ bes,2*3/2 c2*5/2 g2 \finalis
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
        "II"
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
