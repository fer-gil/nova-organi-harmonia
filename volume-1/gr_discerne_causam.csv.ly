\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.285
%(volume.page)

global = {
 \key c \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Discerne causam" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Discerne causam"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Discerne causam" }
    \line {}
  }
}

chantText = \lyricmode {
Dis -- cér -- ne 
\set stanza = " * " cau -- sam me -- am, Dó -- _ _ _ mi -- ne: 
ab hó -- _ _ _ mi -- ne in -- í -- quo et do -- ló -- so é -- ri -- pe _ me. _ _ _ _ _ ℣. 
E -- mít -- te lu -- cem tu -- am, _ _ _ _ _ _ _ 
et ve -- ri -- tá -- tem _ _ tu -- _ am: _ _ 
i -- psa _ _ me de -- du -- xé -- runt, 
et ad -- du -- xé -- runt in mon -- tem san -- ctum 
\set stanza = " * " tu -- _ um. _ _ _ _ _ _ _ _ _ }

chantMusic = {
\tieDown   c'4 ees'4 ( ees'4 \once \tweak #'font-size #-4 f' ) ees'4 \divisioMinima
 ees'4 ees'4 ees'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 ( ees'4) f'4 ( ees'4 d'4 c'4.) f'4 ( d'4) ees'4 ( f'4) ees'4 ees'4 \divisioMaior \forceBreak

 ees'4 g'4 ( ees'4) f'4 ( g'4) bes'4 ( bes'4) c''4 ( bes'4 c''4) a'4 ( bes'4) g'4 f'4 g'4 ( a'\prall bes'4) a'4 ( g'4) g'4 bes'4 bes'4 a'4 ( bes'4) \divisioMinima \forceBreak

 g'4 ( g'4 f'4) g'4 g'4 ( f'4) ~ f'4 ( ees'4 f'4) ees'4 ( f'4 g'4) bes'4. c''4 ( d''4 bes'4 g'4) \divisioMinima
  bes'4 ( bes'4 g'4 f'4.) g'4 ( aes'4 f'4 ees'4 f'\prall g'4 f'4) g'4 ( bes'4 g'4 g'4) ees'4 ( f'4 ees'4) \finalis \forceBreak

  ees'4 ees'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 ( c''4 bes'4) c''4 ( bes'4) d''4 ( bes'4 g'4) \divisioMinima
 bes'4 ( a'4) c''4 ( d''4 bes'4.) d''4 ( c''4 bes'4) d''4 ( c''4 bes'4) ~ bes'4 ( a'4 g'4) \divisioMaxima \forceBreak

 g'4 g'4 g'4 ( c''4) c''4 c''4 ( bes'4) d''4 ( ees''4 c''4) bes'4 ( bes'4 g'4) \divisioMinima
 bes'4 ( g'4) bes'4 ( bes'4 bes'4) bes'4 ( g'4 a'\prall bes'4 c''4.) bes'4 ( c''4 d''4 bes'4 bes'4) c''4 ( c''4 bes'4) \divisioMaxima \forceBreak

 bes'4 ( bes'4) c''4 ( bes'4) ~ bes'4 ( a'4 g'4 f'4) g'4 ( a'4) g'4 g'4 ( f'4) g'4 ( a'4 bes'4 a'4 g'4 f'4  g'\prall aes'4 g'4) f'4 ees'4 ( f'4 g'4 f'4 ees'4 f'4) f'4 ( ees'4) \divisioMaxima \forceBreak

 ees'4 ees'4 ees'4 ees'4 ees'4 ees'4 ees'4 ees'4 ees'4 ( g'4 f'4 ees'4) f'4 ( g'4)  g'4 ( bes'4 a'4 g'4) bes'4 ( bes'4 bes'4) bes'4 ( bes'4 g'4) \divisioMinima \forceBreak

  aes'4 ( g'4) aes'4 ( f'4 ees'4.) g'4 ( aes'4 f'4 ees'4.) g'4 ( f'4) bes'4. ~ bes'4 ( bes'4) ~ bes'4 ( g'4 g'4) ees'4 ( g'4 f'4) g'4 ( f'4) ~ f'4 ( ees'4) \finalis

}

altoMusic = {
c'4 ~ c'2*3/2 ~ c'4 ~ \divisioMinima
c'2 ~ c'4 ~ c'2 ees'2 c'2*3/2 ~ c'2*3/4 bes2 ~ bes2*3/2 c'4 ~ \divisioMaior
c'4 ees'2*4/2 f'2*5/2 ~ f'2*4/2 d'2*5/2 ~ d'2 f'4 ~ f'2 \divisioMinima
ees'2*5/2 d'2*4/2 ees'2*3/2 f'2*3/4 d'2*4/2 ees'2*3/2 c'2*3/4 ~ c'2*3/2 ees'2*4/2 ~ ees'2*4/2 bes2 ~ bes4 r4 ees'4 ~ ees'2 ~ ees'2*3/2 d'4 ~ d'2*3/2 ~ d'2*5/2 \divisioMinima
f'2 ~ f'2*7/4 ~ f'2*3/2 ~ f'2*3/2 d'2*3/2 \divisioMaxima
r4 g'4 ~ g'2 f'4 ~ f'2 ees'2*3/2 d'2 ~ d'4 ~ \divisioMinima
d'2 ~ d'2*3/2 f'2*4/2 g'2*3/4 f'2*5/2 d'2*3/2 \divisioMaxima
g'2*3/2 f'2*8/2 ~ f'2 ees'2*5/2 ~ ees'2*5/2 bes2*6/2 ~ bes2 \divisioMaxima
ees'2*3/2 bes2*3/2 ~ bes2 ees'2*4/2 f'2 d'2*4/2 ees'2*3/2 d'2*3/2 f'2*3/2 ~ f'4 ees'2*3/4 ~ ees'2*9/4 ~ ees'2 ~ ees'2*3/4 f'2 d'2*3/2 ees'2*4/2 bes2 ~ bes4 \finalis
}

tenorMusic = {
r4 g2*3/2 ~ g4 ~ \divisioMinima
g2 aes4 ~ aes2 bes2 g2*9/4 f2 g2*3/2 ~ g4 ~ \divisioMaior
g4 bes2*4/2 ~ bes2*5/2 c'2*4/2 ~ c'2*5/2 bes2 c'4 bes2 ~ \divisioMinima
bes2*5/2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/4 ~ bes2*4/2 ~ bes2*3/2 aes2*3/4 a2*3/2 bes2*4/2 ~ bes2*4/2 aes2 g4 r4 bes4 ~ bes2 ~ bes2*3/2 ~ bes4 ~ bes2*3/2 ~ bes2*5/2 \divisioMinima
c'2 ~ c'2*7/4 bes2*3/2 ~ bes2*3/2 ~ bes2*3/2 \divisioMaxima
r4 f'4 ees'2 ~ ees'4 d'2 c'2*3/2 r2 bes4 \divisioMinima
c'2 bes2*3/2 ~ bes2*4/2 ~ bes2*3/4 ~ bes2*5/2 ~ bes2*3/2 ~ \divisioMaxima
bes2*3/2 ~ bes2*8/2 ~ bes2 ~ bes2*5/2 aes2*5/2 a2*6/2 g2 \divisioMaxima
ees2*3/2 g2*3/2 ~ g2 bes2*4/2 ~ bes2 ~ bes2*4/2 ~ bes2*3/2 ~ bes2*3/2 c'2*4/2 bes2*3/4 ~ bes2*9/4 ~ bes2 ~ bes2*3/4 ~ bes2 ~ bes2*3/2 ~ bes2*4/2 aes2 g4 \finalis
}

bassMusic = {
c4 ~ c2*3/2 ~ c4 ~ \divisioMinima
c2 ~ c4 f2 ees2 ~ ees2*9/4 d2 c2*3/2 ~ c4 ~ \divisioMaior
c4 ~ c2*4/2 d2*5/2 ~ d2*4/2 g2*5/2 ~ g2 d4 ~ d2 \divisioMinima
ees2*5/2 bes,2*4/2 c2*3/2 d2*3/4 g2*4/2 ~ g2*3/2 aes2*3/4 f2*3/2 g2*4/2 ees2*4/2 ~ ees2 ~ ees4 g4 ~ g4 ~ g2 bes2*3/2 ~ bes4 a2*3/2 g2*5/2 \divisioMinima
f2 d2*7/4 ~ d2*3/2 g2*3/2 ~ g2*3/2 \divisioMaxima
r2*10/2 g2 ~ g4 ~ \divisioMinima
g2 ~ g2*3/2 d2*4/2 ees2*3/4 d2*5/2 g2*3/2 \divisioMaxima
ees2*3/2 d2*8/2 c2 ~ c2*5/2 ~ c2*5/2 ees2*6/2 ~ ees2 \divisioMaxima
r2*3/2 d2*3/2 c2 ~ c2*4/2 d2 g2*4/2 ~ g2*3/2 ~ g2*3/2 f2*4/2 g2*3/4 ees2*9/4 d2 c2*3/4 d2 g2*3/2 c2*4/2 ees2 ~ ees4 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Gradual"
        "V"
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
