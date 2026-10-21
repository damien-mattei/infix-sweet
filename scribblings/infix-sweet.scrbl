#lang scribble/manual

@title{infix-sweet reader for DrRacket}

@author[(author+email "Damien MATTEI" "Damien.MATTEI@univ-cotedazur.fr")]

@bold{curly infix, neoteric and sweet expressions reader for DrRacket}

Install as a package.

Use:

#lang reader infix-sweet

or:

@defmodule[infix-sweet #:reader]{
This reader package provides the reader/parser of SRFI 110 for DrRacket: the curly infix expressions of SRFI 105, and the neoteric and sweet expressions of SRFI 110.

Source code: @url["https://github.com/damien-mattei/infix-sweet"]

Package: @url["https://pkgs.racket-lang.org/package/infix-sweet"]
}


Designed to be used with Scheme+:

@defmodule[Scheme+ #:no-declare #:link-target? #f]{
This package provides the Scheme+ language definitions.

Source code: @url["https://github.com/damien-mattei/Scheme-PLUS-for-Racket"]

Package: @url["https://pkgs.racket-lang.org/package/Scheme-PLUS-for-Racket"]
}


SRFI 110 is compatible with SRFI 105: a program written with the curly infix expressions of SRFI 105, the infix between curly brackets @litchar{{ }} and the usual parenthesis of Scheme, is read the same way (inside the parenthesis the indentation does not matter):

@codeblock|{
#lang reader infix-sweet
(module example racket
  (require Scheme+)
  (define (f x) {3 * x ² + 2 * x + 1})
  (display (f 2)) (newline))
}|

displays @racket[17]. The same program written with the sweet expressions of SRFI 110, where the indentation gives the parenthesis and @litchar{f(2)} is @racket[(f 2)]:

@codeblock|{
#lang reader infix-sweet
module example racket
  require Scheme+
  define f(x) {3 * x ² + 2 * x + 1}
  display f(2)
  newline()
}|


This is simply an alias of SRFI-110 for Racket: @url["https://pkgs.racket-lang.org/package/SRFI-110-for-Racket"]
