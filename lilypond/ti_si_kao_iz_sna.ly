\version "2.24.1"
\include "deutsch.ly"
jazzChords = { \semiGermanChords }
aFourL = {}
\include "./config/include.ily"
markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})

\layout {
  indent = 0
}

\header {
  titlex = "Scifidelity Orchestra"
  title = "TI SI KAO IZ SNA"
  composer = "Nacio Herb Brown"
  %poet = "Gus Kahn prev. Filip Horvat"
  style = "Gus Kahn prev. Filip Horvat"
  broj = ""
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \voiceOne
  \tempo 4 = 120
  \key a \major
  \time 4/4
  \clef bass \markMoj "A" cis2 r2 |
  r8 cis4. cis8 cis8 cis8 d8 ~|
  d1 ~|
  d4 r4 \tuplet 3/2 { d4 d4 d4 } |
  \tuplet 3/2 { e4 e4 e4 ~} e2 ~|
  e4 r8 e8 e8 d8 c8 a'8 ~|
  a8 a8 ~a2. ~|
  a8 r8 a4 \tuplet 3/2 { a4 a4 a4 } \bar "||" |
  \markMoj "B" a8 a,8 r4 a2 ~|
  a4 r4 \tuplet 3/2 { a'4 b4 a4 } |
  a8 a,8 r4 a2 ~|
  a4 r4 \tuplet 3/2 { a'4 a4 a4 } |
  a4 a,8 a8 ~a2 ~|
  a4 r4 \tuplet 3/2 { a4 h4 a4 } |
  c1 |
  cis4 r4 r2 \bar "||" |
  \markMoj "C" r4 cis2. ~|
  cis8 cis4 cis8 cis4 cis8 d8 ~|
  d1 ~|
  d4 r4 \tuplet 3/2 { d4 d4 d4 } |
  \tuplet 3/2 { e4 e4 e4 ~} e2 ~|
  e4 r8 e8 e8 d8 c8 a'8 ~|
  a1 ~|
  a8 r8 r4 r2 |
  \markMoj "D" r2 f2 (|
  e1 )|
  e2 (fis2 |
  gis4 )r4 \tuplet 3/2 { h4 a4 cis,4 } |
  e1 ~|
  e4 r4 \tuplet 3/2 { e4 e4 e4 } |
  e1 ~|
  e2 r2 \bar "||" |
  \markMoj "G" cis2 r2 |
  r8 cis4 cis8 cis4 cis8 d8 (~|
  d8 dis8 ~dis2. ~|
  dis8 )dis8 ~dis4 d4 dis4 |
  \tuplet 3/2 { e4 e4 e4 ~} e2 ~|
  e4 r8 e8 e8 d8 c8 a'8 (~|
  a8 c8 ~c2 ~c8 a8 )|
  r8 a,4 ~a8 a4 a4 |
  \markMoj "H" a2 g4 f8 e8 ~|
  e2 r8 f4. |
  \tuplet 3/2 { gis4 e4 fis4 } gis2 ~|
  gis2 \tuplet 3/2 { h'4 a4 cis,4 } |
  \markMoj "I" e1 ~|
  e4 r4 \tuplet 3/2 { e4 e4 e4 } |
  e1 ~|
  e1 |
  r2 \tuplet 3/2 { e4 fis4 e4 } |
  gis1 ~|
  gis1 \bar "|." |
}

alignerOneZero = \relative {
  c2 r2 |
  r8 c4. c8 c8 c8 c8( |
  c1 |
  c4) r4\tuplet 3/2 { c4 c4 c4 } |
  \tuplet 3/2 {c4 c4 c4( }c2) |
  r4 r8 c8 c8 c8 c8 c8 |
  r8 c8( c2. |
  c8) r8 c4 \tuplet 3/2 {c4 c4 c4 } |
  c8 c8 r4 c2( |
  c4) r4\tuplet 3/2 { c4 c4 c4 } |
  c8 c8 r4 c2( |
  c4) r4\tuplet 3/2 { c4 c4 c4 } |
  c4 c8 c8( c2 |
  c4) r4\tuplet 3/2 { c4 c4 c4 } |
  c1 |
  c4 r4 r2 |
  r4 c2.( |
  c8) c4 c8 c4 c8 c8( |
  c1 |
  c4) r4\tuplet 3/2 { c4 c4 c4 } |
  \tuplet 3/2 {c4 c4 c4( }c2) |
  r4 r8 c8 c8 c8 c8 c8( |
  c1 |
  c8) r8 r4 r2 |
  r2 c2( |
  c1) |
  c2( c2 |
  c4) r4\tuplet 3/2 { c4 c4 c4 } |
  c1( |
  c4) r4\tuplet 3/2 { c4 c4 c4 } |
  c1( |
  c2) r2 |
  c2 r2 |
  r8 c4 c8 c4 c8 c8( |
  c8 c8 c2.) |
  r8 c8 r4 c4 c4 |
  \tuplet 3/2 {c4 c4 c4( }c2) |
  r4 r8 c8 c8 c8 c8 c8( |
  c8 c8 c2 c8 c8) |
  r8 c4( c8) c4 c4 |
  c2 c4 c8 c8( |
  c2) r8 c4. |
  \tuplet 3/2 {c4 c4 c4 }c2( |
  c2)\tuplet 3/2 { c4 c4 c4 } |
  c1( |
  c4) r4\tuplet 3/2 { c4 c4 c4 } |
  c1( |
  c1) |
  r2\tuplet 3/2 { c4 c4 c4 } |
  c1( |
  c1) |
}

lyricOneZero = \lyricmode {
  Ti %|
  si ka -- o iz sna __ %|
  %|
  Pre -- vi -- še %|
  ču -- de -- sna __ %|
  da bi -- la bi stvar -- %|
  na __ %|
  Zar po -- sto -- je %|
  o -- či te __ %|
  Po -- sto -- je %|
  u -- sne te __ %|
  Po -- sto -- je %|
  o -- smije -- si __ %|
  i -- skre -- no %|
  pi -- %|
  tam? %|
  Ti __ %|
  sne -- ba si -- šla si __ %|
  %|
  že -- lim te %|
  o -- dve -- sti __ %|
  da -- le -- ko od svih __ %|
  %|
  %|
  U __ %|
  %|
  u __ %|
  Ra -- vno iz %|
  sna __ %|
  do sr -- ca %|
  mog __ %|
  %|
  Ti %|
  sne -- ba si -- šla si __ %|
  %|
  že -- lim te %|
  o -- dve -- sti __ %|
  da -- le -- ko od svih __ %|
  %|
  I __ i -- ma %|
  ti za se -- be __ %|
  skorz %|
  iz -- dvo -- je -- no __ %|
  Ra -- vno iz %|
  sna __ %|
  do sr -- ca %|
  mog __ %|
  %|
  Ra -- vno iz %|
  sna __ %|
  %|
}

staffTwo = \relative c' {
  \voiceTwo
  \time 4/4
  \key a \major
  \clef bass a,2 r2 |
  r8 gis4. fis8 fis8 gis8 a8 (~|
  a1 |
  g4 )r4 \tuplet 3/2 { b4 g4 b4 } |
  \tuplet 3/2 { b4 b4 b4 (} c2 |
  h4 )r8 h8 b8 b8 c8 e8 ~|
  e8 e8 (~e2 es8 d8 ~|
  d8 )r8 e4 \tuplet 3/2 { e4 es4 d4 } \bar "||" |
  d8 d8 r4 d2 (|
  cis4 )r4 \tuplet 3/2 { e4 f4 e4 } |
  e8 d8 r4 e2 (|
  d4 )r4 \tuplet 3/2 { d4 e4 fis4 } |
  fis4 fis8 fis8 ~fis2 ~|
  fis4 r4 \tuplet 3/2 { a,4 h4 a4 } |
  c1 |
  cis4 r4 r2 \bar "||" |
  r4 h2. ~|
  h8 h4 h8 h4 h8 c8 (~|
  c1 |
  b4 )r4 \tuplet 3/2 { c4 c4 c4 } |
  \tuplet 3/2 { d4 d4 d4 (} c2 |
  h4 )r8 h8 b8 b8 b8 f'8 (~|
  f1 |
  e8 )r8 r4 r2 |
  r2 d2 ~|
  d1 |
  cis2 (d2 |
  e4 )r4 \tuplet 3/2 { cis4 cis4 cis4 } |
  h2 (b2 |
  a4 )r4 \tuplet 3/2 { as4 as4 as4 } |
  as2 (h2 |
  b2 )r2 \bar "||" |
  a2 r2 |
  r8 gis4 gis8 fis4 gis8 a8 (~|
  a8 b8 ~b2. ~|
  b8 )as8 ~as4 g4 gis4 |
  \tuplet 3/2 { h4 h4 h4 (} c2 |
  h4 )r8 e8 e8 d8 c8 e8 (~|
  e8 f8 ~f2 ~f8 e8 )|
  r8 a,4 ~a8 a4 a4 |
  a2 g4 f8 e8 ~|
  e2 r8 f4. |
  \tuplet 3/2 { gis4 e4 fis4 } gis2 ~|
  gis2 \tuplet 3/2 { gis4 gis4 a4 } |
  h2 (b2 |
  a4 )r4 \tuplet 3/2 { gis4 h4 gis4 } |
  h1 (|
  b1 )|
  r2 \tuplet 3/2 { cis4 cis4 c4 } |
  h1 ~|
  h1 \bar "|." |
}

staffThree = \relative c' {
  \voiceOne
  \time 4/4
  \key a \major
  \clef bass
  e,2 r2 |
  r8 e4. e8 e8 e8 f8 ~|
  f1 ~|
  f4 r4 \tuplet 3/2 { f4 f4 f4 } |
  \tuplet 3/2 { g4 g4 g4 (~} g2 |
  gis4 )r8 gis8 fisis8 fisis8 gis8 c8 ~|
  c8 c8 ~c2. ~|
  c8 r8 c4 \tuplet 3/2 { c4 c4 c4 } \bar "||" |
  h8 h8 r4 h2 ~|
  h4 r4 \tuplet 3/2 { h4 c4 cis4 } |
  h8 c8 r4 cis2 (|
  h4 )r4 \tuplet 3/2 { h4 cis4 d4 } |
  e4 e,8 e8 ~e2 (|
  es4 )r4 \tuplet 3/2 { a,4 h4 a4 } |
  c1 |
  cis4 r4 r2 \bar "||" |
  r4 gis'2. ~|
  gis8 gis4 fis8 fis4 gis8 a8 (~|
  a1 |
  g4 )r4 \tuplet 3/2 { a4 g4 a4 } |
  \tuplet 3/2 { b4 b4 b4 (} a2 |
  gis4 )r8 gis8 g8 g8 g8 cis8 (~|
  cis1 |
  c8 )r8 r4 r2 |
  r4 h2. (|
  a4 gis4 a4 gis4 )|
  e2 (fis2 |
  h4 )r4 \tuplet 3/2 { gis4 gis4 gis4 } |
  as2 (g2 |
  e4 )r4 \tuplet 3/2 { d4 d4 d4 } |
  des2 (as'2 |
  f2 )r2 \bar "||" |
  e2 r2 |
  r8 e4 e8 e4 e8 f8 (~|
  f8 fis8 ~fis2. ~|
  fis8 )fis8 ~fis4 eis4 fis4 |
  \tuplet 3/2 { g4 g4 g4 (} a2 |
  gis4 )r8 gis8 gis8 gis8 gis8 h8 (~|
  h8 c8 ~c2 ~c8 h8 )|
  r1 |
  r1 |
  r1 |
  r1 |
  r2 \tuplet 3/2 { e,4 e4 e4 } |
  as2 (g2 |
  f4 )r4 \tuplet 3/2 { fis4 gis4 gis4 } |
  gis1 (|
  g1 )|
  r2 \tuplet 3/2 { e4 fis4 g4 } |
  fis1 ~|
  fis1 \bar "|." |
}

staffFour = \relative c' {
  \voiceTwo
  \time 4/4
  \key a \major
  \clef bass
  a,2 r2 |
  r8 a4. a8 a8 a8 b8 ~|
  b1 ~|
  b4 r4 \tuplet 3/2 { b4 b4 b4 } |
  \tuplet 3/2 { c4 d4 f4 (~} f2 |
  e4 )r8 e8 c8 d8 e8 f8 ~|
  f8 f8 ~f2. ~|
  f8 r8 f4 \tuplet 3/2 { f4 f4 f4 } \bar "||" |
  e8 e8 r4 e2 ~|
  e4 r4 \tuplet 3/2 { g4 g4 g4 } |
  f8 f8 r4 f2 ~|
  f4 r4 \tuplet 3/2 { h4 h4 h4 } |
  cis4 cis,8 cis8 ~cis2 (|
  h4 )r4 \tuplet 3/2 { a4 h4 a4 } |
  c1 |
  cis4 r4 r2 \bar "||" |
  r4 e2. ~|
  e8 e4 e8 e4 e8 f8 ~|
  f1 ~|
  f4 r4 \tuplet 3/2 { f4 f4 f4 } |
  \tuplet 3/2 { g4 g4 g4 } f2 ~|
  f4 r8 f8 g8 g8 g8 g8 ~|
  g1 (|
  fis8 )a4. a4 a4 |
  a2 g8 f4 e8 ~|
  e2 r8 f4. |
  \tuplet 3/2 { gis4 e4 fis4 } gis2 |
  r2 \tuplet 3/2 { e4 e4 e4 } |
  cis2 (c2 ~|
  c4 )r4 \tuplet 3/2 { h4 h4 h4 } |
  a2 (cis2 |
  d2 )r2 \bar "||" |
  a2 r2 |
  r8 a4 a8 a4 a8 ais8 (~|
  ais8 h8 ~h2. ~|
  h8 )h8 ~h4 ais4 h4 |
  \tuplet 3/2 { c4 d4 e4 (} f2 |
  e4 )r8 e8 c8 d8 e8 fis8 (~|
  fis8 g8 ~g2 ~g8 fis8 )|
  r1 |
  r1 |
  r1 |
  r1 |
  r2 \tuplet 3/2 { cis4 cis4 cis4 } |
  cis2 (c2 ~|
  c4 )r4 \tuplet 3/2 { h4 d4 d4 } |
  cis1 (|
  c1 )|
  r2 \tuplet 3/2 { h4 es4 d4 } |
  cis1 ~|
  cis1 \bar "|." |
}

%\score {
%    <<
%    \new ChoirStaff \with { \accepts NullVoice }
%        <<
%        \new Staff \partCombine \staffOne \staffTwo
%        \new NullVoice = "alignerOneZero" { \alignerOneZero }
%        \new Lyrics \lyricsto "alignerOneZero" { \lyricOneZero }
%        \new Staff \partCombine \staffThree \staffFour
%        >>
%    >>
%    \layout { }
%    \midi { }
%}

\score {
  \context StaffGroup <<
    \context Staff = "upper" <<
      \clef treble
      \context Voice = "one" \staffOne
      \context Voice = "two" \staffTwo
      \context NullVoice = "aligner" \alignerOneZero
    >>
    \new Lyrics \lyricsto "aligner" {
      \lyricOneZero
    }
    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" \staffThree
      \context Voice = "two" \staffFour
    >>
  >>
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((padding . 1.2))
    }
    \context {
      \StaffGroup
      \remove "Span_bar_engraver"
    }
    \context {
      \Staff
     \override VerticalAxisGroup.staff-staff-spacing = #'((padding . 0))
      autoBeaming = ##t
      \unset melismaBusyProperties 
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
  \midi { }
}
