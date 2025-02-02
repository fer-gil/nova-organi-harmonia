\version "2.18"
\include "gregorian.ly"
\include "noh2.ily"


%Page reference: page i.60
%(volume.page)

global = {
 \key e \mixolydian
 \cadenzaOn 
}

\header {
  title = \markup \center-column {"Puer natus est" \vspace #1 }
  tagline = ""
  composer = ""
}

\paper {
 #(include-special-characters)
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \on-the-fly #first-page     " "
      \on-the-fly #not-first-page "Puer natus est"
    }
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string }
    \center-column { "Puer natus est" }
    \line {}
  }
}

chantText = \lyricmode {
Pu -- er 
\set stanza = " * " na -- tus est no -- _ bis, 
et fí -- li -- us da -- tus est no -- bis: 
cu -- jus im -- pé -- ri -- um su -- per hú -- _ me -- rum e -- _ _ jus: 
et vo -- cá -- bi -- tur no -- men e -- _ jus, 
mag -- ni con -- sí -- li -- _ i An -- _ ge -- lus. Ps. 
Can -- tá -- te Dó -- mi -- no cán -- ti -- cum no -- vum: 
\set stanza = " * " 
qui -- a mi -- ra -- bí -- li -- a fe -- cit. 
Gló -- ri -- a Pa -- tri, et Fí -- li -- o, et Spi -- rí -- tu -- i San -- cto. 
\set stanza = " * " 
Sic -- ut e -- rat in prin -- cí -- pi -- o, et nunc, et sem -- per, 
et in sǽ -- cu -- la sæ -- cu -- ló -- rum. A -- men. }

chantMusic = {
\tieDown  e'4 ( b'4) b'4  b'4 ( cis''4 b'4) a'4 a'4 ( a'4 a'4) b'4 ( a'4) cis''4 ( b'4) b'4 \divisioMaior
 e'4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4 b'4) a'4 ( gis'4) fis'4 \forceBreak
 a'4 ( a'4 b'4) a'4 a'4 a'4 ( b'4 a'4 a'4) e'4 ( fis'4 e'4) \divisioMaxima
 e'4 fis'4 a'4 gis'4 ( b'4 cis''4 d''4) b'4 ( a'4) a'4 \divisioMinima
 a'4 a'4 \forceBreak
 b'4 ( a'4) cis''4 ( b'4) a'4 ( gis'4) a'4 ( a'4 a'4) a'4 ( fis'4.) a'4 ( gis'4) a'4 ( gis'4 fis'4) gis'4 ( fis'4) \divisioMaxima
 a'4 ( gis'4) a'4 a'4 ( cis''4 b'4) a'4 a'4 ( a'4 a'4) a'4 a'4 ( a'4 a'4 \forceBreak
) a'4 ( b'4 gis'4) a'4 ( gis'4 fis'4) gis'4 ( fis'4) \divisioMaior
 a'4 ( cis''4) b'4 e'4 ( \once \tweak #'font-size #-4 a' ) a'4 a'4 ( a'4) ~ a'4 ( fis'4) fis'4 fis'4 ( a'4 fis'4 ( gis'\prall a'4) e'4 ( fis'4 e'4) e'4 \finalis
 e'4 ( a'4 gis'4 \forceBreak
) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( d''4) cis''4 cis''4 cis''4 ( b'4) b'4 ( cis''4) \divisioMaxima
 b'4 ( gis'4) a'4 ( b'4) b'4 b'4 b'4 ( cis''\prall d''4) b'4 a'4 \forceBreak
 a'4 ( a'4 a'4) fis'4 ( e'4) \finalis
  e'4 ( a'4 gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 b'4 ( d''4) cis''4 cis''4 cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4) \divisioMaxima \forceBreak

 b'4 ( gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 b'4 b'4 \divisioMinima
 b'4 b'4 ( d''4) cis''4 cis''4 ( \once \tweak #'font-size #-4 b' ) b'4 ( cis''4) \divisioMaxima \forceBreak

 b'4 ( gis'4) a'4 ( b'4) b'4 b'4 b'4 b'4 b'4 ( cis''\prall d''4) b'4 a'4 a'4 ( a'4 a'4) fis'4 ( e'4) \finalis

}

altoMusic = {
e'2*3/2 gis'2*4/2 fis'2*5/2 ~ fis'2*3/2 \divisioMaior
e'2 ~ e'2*3/2 ~ e'2*3/2 ~ e'2*5/2 ~ e'2*4/2 b2 ~ b4 \divisioMaxima
cis'2*3/2 e'2 fis'2*4/2 ~ fis'4 \divisioMinima
cis'2 e'2*4/2 ~ e'2 d'2*3/2 ~ d'2*9/4 e'2*3/2 cis'2 \divisioMaxima
e'2*3/2 cis'2*4/2 ~ cis'2*3/2 fis2*4/2 e'2*3/2 ~ e'2*3/2 cis'2 \divisioMaior
e'2 ~ e'2*3/2 ~ e'4 ~ e'2 d'2*3/2 ~ d'2 cis'2*3/2 b2*3/2 ~ b4 \finalis
r2*3/2 a'2*4/2 gis'2 fis'2*4/2 gis'2 ~ gis'2 \divisioMaxima
e'2*6/2 fis'2*3/2 e'2 d'2*3/2 b2 r2*3/2 a'2*6/2 gis'2*3/2 ~ \divisioMinima
gis'2 fis'2*4/2 gis'2 ~ gis'2 \divisioMaxima
e'2 ~ e'2 ~ e'2*4/2 fis'2*3/2 ~ \divisioMinima
fis'4 ~ fis'2*3/2 e'2 ~ e'2 ~ \divisioMaxima
e'2 ~ e'2 ~ e'2*4/2 fis'2*3/2 e'2 d'2*3/2 b2 \finalis
}

tenorMusic = {
e'2*3/2 ~ e'2*4/2 ~ e'2*5/2 ~ e'2*3/2 ~ \divisioMaior
e'2 ~ e'2*3/2 cis'2*3/2 ~ cis'2*5/2 a2*4/2 ~ a2 gis4 \divisioMaxima
a2*3/2 b2 ~ b2*4/2 cis'4 \divisioMinima
a2 ~ a2*4/2 e2 fis2*3/2 b2*9/4 ~ b2*3/2 ~ b4 a4 \divisioMaxima
e2*3/2 ~ e2*4/2 fis2*3/2 ~ fis4 a2*3/2 ~ a2*3/2 b2*3/2 a2 ~ \divisioMaior
a2 gis2*3/2 fis4 ~ fis2 b2*3/2 a2 ~ a2*3/2 ~ a2*3/2 gis4 \finalis
e'2*3/2 ~ e'2*4/2 ~ e'2 d'2*4/2 e'2 ~ e'2 \divisioMaxima
gis2*6/2 a2*3/2 ~ a2 ~ a2*3/2 ~ a4 gis4 e'2*3/2 ~ e'2*6/2 ~ e'2*3/2 ~ \divisioMinima
e'2 d'2*4/2 e'2 ~ e'2 \divisioMaxima
gis2 fis2 gis2*4/2 a2*3/2 ~ \divisioMinima
a4 ~ a2*3/2 gis2 ~ gis2 ~ \divisioMaxima
gis2 fis2 gis2*4/2 a2*3/2 ~ a2 ~ a2*3/2 ~ a4 gis4 \finalis
}

bassMusic = {
r2*17/2 cis'2*3/2 ~ cis'2*3/2 fis2*5/2 cis2*4/2 e2 ~ e4 \divisioMaxima
r2*3/2 e2 d2*4/2 fis4 ~ \divisioMinima
fis2 cis2*4/2 ~ cis2 b,2*3/2 ~ b,2*9/4 cis2*3/2 fis2 \divisioMaxima
cis2*3/2 a,2*4/2 ~ a,2*3/2 b,2*4/2 cis2*3/2 ~ cis2*3/2 fis2 \divisioMaior
cis2 ~ cis2*3/2 ~ cis4 b,2 ~ b,2*3/2 ~ b,2 d2*3/2 e2*3/2 ~ e4 \finalis
r2*9/2 b2*4/2 e'2 cis'2 \divisioMaxima
e2*6/2 d2*3/2 cis2 b,2*3/2 e2 r2*14/2 b2*4/2 e'2 cis'2 \divisioMaxima
e2 ~ e2 ~ e2*4/2 d2*3/2 ~ \divisioMinima
d4 b,2*3/2 e2 cis2 \divisioMaxima
e2 ~ e2 ~ e2*4/2 d2*3/2 cis2 b,2*3/2 e2 \finalis
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
        "VII"
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
