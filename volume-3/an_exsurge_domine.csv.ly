\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page iii.63
%(volume.page)

global = {
 \key g \dorian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Exsurge Domine" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Exsurge Domine"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Exsurge Domine" }
    \line {}
  }
}

chantText = \lyricmode {
Ex -- súr -- ge Dó -- mi -- ne, 
\set stanza = " * " ád -- ju -- va nos 
et lí -- be -- ra nos, pro -- pter no -- men tu -- um. Ps. 
De -- us áu -- ri -- bus no -- stris au -- dí -- vi -- mus: 
\set stanza = " * " 
pa -- tres no -- stri an -- nun -- ti -- a -- vé -- runt no -- bis. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown   d'4 f'4 ( \once \tweak #'font-size #-4 g' ) g'4 g'4 ( a'4) f'4 ( e'4) d'4 \divisioMinima
 f'4 ( a'4) a'4 ( g'4) g'4 ( bes'4 a'4 g'4) g'4 ( a'4) \divisioMaior
 f'4 ( a'4) a'4 g'4 g'4 ( bes'4 a'4 g'4) g'4 \divisioMinima
 g'4 g'4 g'4 g'4 ( a'4 f'4 g'4) g'4 ( a'4 g'4) g'4 \finalis
 f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis
  f'4 g'4 ( f'4) f'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 bes'4 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 bes'4 \divisioMinima
 bes'4 ( a'4) bes'4 ( c''4) c''4 bes'4 ( c''4) bes'4 \divisioMaxima
 bes'4 ( g'4) g'4 ( bes'4) bes'4 bes'4 bes'4 bes'4 c''4 bes'4 ( g'4) bes'4 a'4 ( f'4) g'4 ( a'4 g'4) \finalis

}

altoMusic = {
d'4 ~ d'2*3/2 ~ d'2 a2 ~ a4 \divisioMinima
c'2 d'2 ~ d'2*4/2 ~ d'2 ~ \divisioMaior
d'2 ~ d'2 ~ d'2*4/2 ees'4 ~ \divisioMinima
ees'2*3/2 e'2*4/2 d'2*3/2 ~ d'4 ~ \finalis
d'4 c'2 d'2*4/2 ees'2 f'2*3/2 g'2 f'2 \divisioMaxima
d'2 ~ d'2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2*3/2 ~ d'2 ~ d'2*3/2 r4 d'2 ees'2 f'2*3/2 g'2*3/2 ~ \divisioMinima
g'2 f'2*4/2 ees'4 f'2*3/2 \divisioMaxima
d'2 ~ d'2 ~ d'2*4/2 ~ d'2 ~ d'4 \divisioMinima
ees'2 f'2*3/2 ~ f'2*3/2 \divisioMaxima
ees'2 ~ ees'2 ~ ees'2*5/2 d'2*3/2 ~ d'2 ~ d'2*3/2 \finalis
}

tenorMusic = {
r4 e2*3/2 f2 g2 f4 ~ \divisioMinima
f2 ~ f2 g2*4/2 f2 ~ \divisioMaior
f2 ~ f2 g2*4/2 ~ g4 \divisioMinima
bes2*3/2 c'2*4/2 ~ c'2*3/2 bes4 ~ \finalis
bes4 ~ bes2 ~ bes2*4/2 c'2 d'2*3/2 ees'2 ees4 d'4 ~ \divisioMaxima
d'2 c'2 bes2*3/2 a2*3/2 g2*3/2 a2 bes2*3/2 ~ bes4 ~ bes2 c'2 d'2*3/2 ees'2*3/2 ~ \divisioMinima
ees'2 d'2*4/2 c'4 d'2*3/2 ~ \divisioMaxima
d'2 c'2 bes2*4/2 a2 g4 ~ \divisioMinima
g2 f2*3/2 bes2*3/2 \divisioMaxima
g2 ~ g2 ~ g2*5/2 ~ g2*3/2 c'2 bes2*3/2 \finalis
}

bassMusic = {
d4 ~ d2*3/2 ~ d2 ~ d2 ~ d4 \divisioMinima
a,2 bes,2 ~ bes,2*4/2 d2 \divisioMaior
c2 bes,2 ~ bes,2*4/2 c4 ~ \divisioMinima
c2*3/2 ~ c2*4/2 g2*3/2 ~ g4 \finalis
r2*16/2 \divisioMaxima
g2 ~ g2 ~ g2*3/2 ~ g2*3/2 ~ g2*3/2 ~ g2 ~ g2*3/2 r2*21/2 \divisioMaxima
g2 ~ g2 ~ g2*4/2 ~ g2 ~ g4 \divisioMinima
c2 d2*3/2 ~ d2*3/2 \divisioMaxima
ees2 d2 c2*5/2 g2*3/2 ~ g2 ~ g2*3/2 \finalis
}

voiceLines = {
\voiceLineStyle


}

\score{
  <<
    \new GrandStaff <<
      \set GrandStaff.autoBeaming = ##f
      \set GrandStaff.instrumentName = \markup \center-column {
        "Antiphon"
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
