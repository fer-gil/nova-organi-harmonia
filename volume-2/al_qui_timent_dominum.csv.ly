\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.252
%(volume.page)

global = {
 \key d \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Qui timent Dominum" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Qui timent Dominum"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Qui timent Dominum" }
    \line {}
  }
}

chantText = \lyricmode {
Al -- le -- lú -- _ ia, 
\set stanza = " * " 
al -- le -- lú -- _ ia. 
_ _ _ _ _ _ ℣. 
Qui ti -- _ _ _ _ _ _ _ _ _ _ ment Dó -- _ _ mi -- num, spe -- _ rent _ _ in e -- _ _ o: 
ad -- jú -- _ _ _ tor et pro -- té -- _ _ _ _ _ _ _ ctor 
\set stanza = " * " 
e -- o -- _ _ rum est. 
_ _ _ _ _ _ }

chantMusic = {
\tieDown   d'4 f'4 ( f'4) g'4. f'4 ( a'4 g'4 a'4) a'4 ( c''4 a'4 g'4 f'4) \divisioMaior
 d'4 f'4 ( f'4) g'4. f'4 ( a'4 g'4 a'4) a'4 ( c''4 a'4 g'4 f'4) \divisioMaior \forceBreak

 e'4 ( g'\prall a'4 g'4 a'4.) f'4 ( a'4 g'4) a'4 ( f'4) ~ f'4 ( e'4 c'4) \divisioMinima
 d'4 ( e'\prall f'4 g'4.) e'4 ( g'4 f'4 e'4 d'4 e'\prall f'4 d'4) \finalis
 c'4 ( d'4)  d'4 ( a'4. \forceBreak
) g'4 ( bes'4 a'4) bes'4 ( g'4 f'4.) g'4 ( g'4 f'4) g'4 ( g'4) f'4 ( g'4 a'4) c''4 ( c''4 g'4) \divisioMinima
  a'4 ( a'4 g'4) a'4 ( g'4 f'4.) a'4 ( bes'4 a'4 g'4 a'\prall bes'4 a'4 g'4) a'4 ( bes'4) a'4 \divisioMinima \forceBreak

  a'4 ( g'4) c''4 ( c''4 a'4 g'4.)  a'4 ( bes'4 a'4 bes'4) g'4 g'4 ( \once \tweak #'font-size #-4 e' ) \divisioMinima
 f'4 ( e'4) f'4 ( g'\prall a'4 g'4 a'4) a'4 ( g'4) a'4 ( f'4) g'4 ( a'4 g'4) g'4 ( d'4) f'4 ( e'4) g'4 ( f'4 \forceBreak
) g'4 ( f'4 d'4 e'\prall f'4 d'4) d'4 \divisioMaxima
 d'4 d'4 f'4 ( f'4 d'4) f'4 ( f'4 d'4.) ~ d'4 ( e'4 f'4 g'4 a'4) g'4 ( a'4 g'4) \divisioMinima
 f'4 g'4 ( a'4 g'4) a'4 c''4 ( c''4 a'4) ~ a'4 ( g'4 a'4) \divisioMinima \forceBreak

  f'4 ( a'4 bes'4 g'4 f'4) ~ f'4 ( d'4) f'4 ( f'4) a'4 ( g'4 f'4) ~ f'4 ( e'4 d'4) e'4 ( d'4) \divisioMaior
 d'4 d'4 f'4 ( f'4 f'4) g'4 ( f'4) f'4 ( a'4 g'4 a'4) a'4 ( c''4 a'4 g'4 f'4) \divisioMaior \forceBreak

 e'4 ( g'\prall a'4 g'4 a'4.) f'4 ( a'4 g'4) a'4 ( f'4) ~ f'4 ( e'4 c'4) \divisioMinima
 d'4 ( e'\prall f'4 g'4.) e'4 ( g'4 f'4 e'4 d'4 e'\prall f'4 d'4) \finalis

}

altoMusic = {
d'4 ~ d'2 ~ d'2*3/4 f'2*4/2 e'2*5/2 \divisioMaior
d'4 ~ d'2 ~ d'2*3/4 c'2*4/2 e'2*4/2 d'4 \divisioMaior
e'2 ~ e'2*7/4 d'2 ~ d'2 c'2*3/2 ~ c'4 \divisioMinima
d'2*3/2 c'2*3/4 ~ c'2*4/2 a2*3/2 ~ a4 \finalis
r2 d'4 ~ d'2*3/4 ~ d'2*3/2 ~ d'2*7/4 ~ d'2*3/2 ~ d'2 c'2*3/2 ~ c'2*3/2 ~ c'2*3/2 f'2 ~ f'2*3/4 d'2*3/2 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ d'2 c'2*9/4 ~ c'2*5/2 ~ c'2 ~ \divisioMinima
c'2 ~ c'2*5/2 ~ c'2*4/2 d'2*3/2 ~ d'2 c'2*4/2 ~ c'2 a2*4/2 ~ a4 \divisioMaxima
r4 d'4 ~ d'2*3/2 ~ d'2*7/4 ~ d'2 ~ d'2*3/2 ~ d'2 ~ d'4 ~ \divisioMinima
d'4 c'2*4/2 f'2 e'2*4/2 d'2*4/2 ~ d'2*5/2 ~ d'2 ~ d'2 ~ d'2 a2 ~ \divisioMaior
a2 d'2*5/2 c'2*4/2 e'2*4/2 d'4 ~ \divisioMaior
d'2 c'2*7/4 ~ c'2*4/2 ~ c'2*3/2 ~ c'4 \divisioMinima
d'2*3/2 ~ d'2*3/4 c'2*4/2 a2*3/2 ~ a4 \finalis
}

tenorMusic = {
r4 c'2 bes2*3/4 c'2*4/2 ~ c'2*4/2 d'4 \divisioMaior
d4 ~ d2 ~ d2*3/4 a2*4/2 ~ a2*4/2 ~ a4 ~ \divisioMaior
a2 ~ a2*7/4 ~ a2 bes2 g2*3/2 ~ g4 \divisioMinima
a2*3/2 g2*3/4 ~ g2*4/2 ~ g2*3/2 f4 \finalis
r2 c'2*5/4 bes2*3/2 b2*7/4 c'2*3/2 bes2 a2*3/2 g2*3/2 f2*3/2 ~ f2*7/4 ~ f2*3/2 bes2 g2*3/2 ~ g2 f4 ~ f2 g2*9/4 f2*5/2 g2 ~ \divisioMinima
g2 f2*5/2 ~ f2*4/2 bes2*3/2 a2 g2*4/2 ~ g2 ~ g2*4/2 f4 \divisioMaxima
bes2 c'2*3/2 bes2*7/4 a2 c'2*3/2 ~ c'2 bes4 \divisioMinima
b4 g2*4/2 a2 c'2*4/2 ~ c'2 bes2 a2*3/2 c'2 bes2 a2 g2 f2 ~ \divisioMaior
f2 ~ f2*5/2 ~ f2*4/2 e2*4/2 a4 ~ \divisioMaior
a2 ~ a2*7/4 ~ a2 f2 g2*4/2 \divisioMinima
a2*3/2 g2*3/4 ~ g2*4/2 ~ g2*3/2 f4 \finalis
}

bassMusic = {
r2*9/4 a2*4/2 c'2*4/2 r4 \divisioMaior
r4 c2 bes,2*3/4 a,2*4/2 c2*4/2 d4 ~ \divisioMaior
d2 c2*7/4 bes,2 ~ bes,2 c2*3/2 ~ c4 \divisioMinima
f2*3/2 e2*3/4 c2*4/2 d2*3/2 ~ d4 \finalis
r2*15/4 a2*7/4 g2*3/2 ~ g2 a2*3/2 e2*3/2 ~ e2*3/2 d2*7/4 bes,2*3/2 ~ bes,2 ~ bes,2*3/2 d2 ~ d4 r2 e2*9/4 d2*5/2 e2 \divisioMinima
c2 a,2*5/2 d2*4/2 bes,2*3/2 ~ bes,2 c2*4/2 a,2 d2*4/2 ~ d4 \divisioMaxima
r2 a2*3/2 g2*7/4 f2 d2*3/2 g2 ~ g4 ~ \divisioMinima
g4 e2*4/2 d2 c2*4/2 d2*4/2 ~ d2*5/2 ~ d2 ~ d2 ~ d2 ~ d2 \divisioMaior
c2 bes,2*5/2 a,2*4/2 c2*4/2 d4 \divisioMaior
a2 ~ a2*7/4 d2 ~ d2 c2*4/2 ~ \divisioMinima
c2*3/2 bes,2*3/4 a,2*4/2 d2*3/2 ~ d4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Alleluia"
        "I"
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
