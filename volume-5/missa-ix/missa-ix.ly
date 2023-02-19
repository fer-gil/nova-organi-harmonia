\version "2.24.0"
\language "english"
\include "FerGilSource.ily"
\include "noh.ily"

\paper {
  #(set-paper-size "letter")
top-margin = 2\cm
left-margin = 2.5\cm
right-margin = 2.5\cm
bottom-margin = 2.5\cm
  oddHeaderMarkup = \markup \fill-line {
    \line {}
    \center-column {
      \if \on-first-page     " "
      \unless \on-first-page "IX. IN FESTIS B. M. V. 1."
    }
    \line { \if \should-print-page-number \fromproperty #'page:page-number-string }
  }
  evenHeaderMarkup = \markup \fill-line {
    \line { \if \should-print-page-number \fromproperty #'page:page-number-string }
    \center-column { "IX. IN FESTIS B. M. V. 1." }
    \line {}
  }
}

\header {
  title = "IX. IN FESTIS B. MARIÆ V. 1."
  subtitle = "(Cum jubilo)"
  tagline = ""
}

\include "kyrie.ly"
\include "gloria.ly"
\include "sanctus.ly"
\include "agnus-dei.ly"
\include "ite-missa-est.ly"