\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page ii.182
%(volume.page)

global = {
 \key g \minor
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Deus in loco sancto" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Deus in loco sancto"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Deus in loco sancto" }
    \line {}
  }
}

chantText = \lyricmode {
De -- us 
\set stanza = " * " in lo -- co san -- cto su -- o: 
De -- us, qui in -- ha -- bi -- tá -- _ _ re fa -- cit un -- á -- ni -- mes in do -- mo: 
ip -- se da -- bit vir -- tú -- _ _ tem et for -- ti -- tú -- di -- _ nem 
ple -- _ _ bi _ su -- æ. Ps. 
Ex -- súr -- gat De -- us, et dis -- si -- pén -- tur in -- i -- mí -- ci e -- jus: 
\set stanza = " * " 
et fú -- gi -- ant, qui o -- dé -- runt e -- um, a fá -- ci -- e e -- jus. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   bes'4 ( bes'4 c''4) bes'4  bes'4 bes'4 ( c''4 bes'4 bes'4) g'4 ( f'4) g'4 ( a'\prall bes'4) g'4 ( ees'4) ees'4 ( f'4 ees'4) ees'4 \divisioMaior
 g'4 ( ees'4) ees'4 \forceBreak
 ees'4 g'4 g'4 ( f'4 g'4) g'4 ( f'4 g'4) bes'4 ( g'4) bes'4 ( bes'4) ~ bes'4 ( c''4) bes'4 bes'4 ( d''4 c''4 bes'4) bes'4 ( g'4) \divisioMinima
 g'4 ( bes'4 c''4) c''4 ( d''4 \forceBreak
) c''4 bes'4 bes'4 ( c''4) bes'4 ( c''4 bes'4 bes'4) a'4 ( g'4) \divisioMaxima
 g'4 bes'4 ( bes'4) bes'4 ( c''4) g'4 bes'4 ( bes'4) bes'4. a'4 ( c''4 bes'4) a'4 ( bes'4 g'4) g'4 \divisioMinima \forceBreak

 g'4  g'4 ( \once \tweak #'font-size #-4 aes' ) g'4 ( f'4) g'4 ( aes'4 g'4 ees'4) ees'4 ( g'4 f'4 ees'4) f'4 ( ees'4) ees'4 \divisioMaior
  ees'4 ( f'4) aes'4 ( g'4) aes'4 ( bes'4) bes'4 ( aes'4) ~ aes'4 ( f'4 g'\prall aes'4) ees'4 ( f'4 ees'4) ees'4 \finalis \forceBreak

 ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima \forceBreak

 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 a'4 bes'4 g'4 \finalis \forceBreak

  ees'4 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 \forceBreak
 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 c''4 c''4 bes'4 \divisioMaxima
 g'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 c''4 a'4 bes'4 g'4 \finalis

}

altoMusic = {
g'2*3/2 f'2 ees'2*4/2 d'2 ~ d'2*3/2 bes2 ~ bes2*3/2 ~ bes4 \divisioMaior
ees'2*3/2 ~ ees'2 d'2*3/2 ~ d'2*3/2 ~ d'2 g'2 f'2*3/2 ees'2*4/2 d'2 \divisioMinima
r4 d'2 g'2 ~ g'2 ~ g'2 ees'2*4/2 d'2 \divisioMaxima
ees'4 d'2 g'2 ~ g'4 f'2 ees'2*3/4 f'2*3/2 d'2*3/2 ~ d'4 ~ \divisioMinima
d'4 ees'2*4/2 c'2*4/2 ~ c'2*4/2 ~ c'2*3/2 ~ c'2 ~ c'2 ~ c'2*3/2 ~ c'2 ~ c'2*3/2 bes2*3/2 ~ bes4 \finalis
r2*3/2 g'2*5/2 ~ g'2*4/2 ~ g'2 ~ g'2 \divisioMaxima
r4 d'2*5/2 ees'2 f'2*3/2 ~ f'2*3/2 d'2 r2*3/2 g'2*3/2 f'2*3/2 ~ \divisioMinima
f'2 ees'2*3/2 f'2 \divisioMaxima
ees'2 d'2*4/2 ~ d'2*3/2 ~ \divisioMinima
d'4 g'2 f'2 \divisioMaxima
ees'2 f'2*3/2 ~ f'2 ~ f'2 d'2 \finalis
}

tenorMusic = {
bes2*3/2 ~ bes2 ~ bes2*4/2 ~ bes2 g2*3/2 ~ g2 aes2*3/2 g4 \divisioMaior
bes2*3/2 c'2 ~ c'2*3/2 bes2*3/2 g2 ~ g2 ~ g2*3/2 ~ g2*4/2 ~ g2 \divisioMinima
bes4 g2 ~ g2 ees'2 d'2 c'2*4/2 bes2 \divisioMaxima
g4 ~ g2 ~ g2*3/2 ~ g2 ~ g2*3/4 c'2*3/2 ~ c'2*3/2 bes4 ~ \divisioMinima
bes4 ~ bes2*4/2 ~ bes2*4/2 aes2*4/2 g2*3/2 ~ g2 f2 ees2*3/2 f2 aes2*3/2 ~ aes2*3/2 g4 \finalis
ees'2*3/2 ~ ees'2*5/2 ~ ees'2*4/2 ~ ees'2 d'2 \divisioMaxima
r4 g2*5/2 ~ g2 f2 g4 a2 c'4 ~ c'4 bes4 ees'2*3/2 ~ ees'2*3/2 r2*3/2 \divisioMinima
r2*7/2 \divisioMaxima
r2*6/2 bes2*4/2 ~ bes2 ~ bes2 ~ \divisioMaxima
bes2 ~ bes2*3/2 g2 a4 c'4 ~ c'4 bes4 \finalis
}

bassMusic = {
ees2*3/2 d2 c2*4/2 bes,2 ~ bes,2*3/2 ees2 ~ ees2*3/2 ~ ees4 \divisioMaior
d2*3/2 c2 g2*3/2 ~ g2*3/2 f2 ees2 d2*3/2 c2*4/2 g2 ~ \divisioMinima
g4 f2 ees2 ~ ees2 g2 ~ g2*4/2 ~ g2 \divisioMaxima
r4 f2 ees2*3/2 d2 c2*3/4 d2*3/2 g2*3/2 ~ g4 ~ \divisioMinima
g4 ees2*4/2 f2*4/2 ~ f2*4/2 c2*3/2 aes,2 ~ aes,2 ~ aes,2*3/2 a,2 aes,2*3/2 ees2*3/2 ~ ees4 \finalis
r2*8/2 d'2*4/2 c'2 g2 \divisioMaxima
r4 g,2*5/2 c2 d2*3/2 ~ d2 ~ d4 g2 r2*6/2 d'2*3/2 ~ \divisioMinima
d'2 c'2*3/2 d'2 \divisioMaxima
c'2 g2*4/2 ~ g2*3/2 \divisioMinima
f4 ees2 d2 \divisioMaxima
c2 d2*3/2 ~ d2 ~ d2 g2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Introit"
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
