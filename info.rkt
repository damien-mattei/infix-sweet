#lang info

(define pkg-name "infix-sweet")
(define collection "infix-sweet")
(define compile-omit-paths '("doc" "deprecated" "compiled"))
(define test-omit-paths '("doc" "compiled" "bootstrapping"))
(define pkg-desc "infix-sweet alias for SRFI-110 Curly Infix, Neoteric and Sweet expressions for Racket")
(define version "1.0")
(define pkg-authors '(mattei))
(define scribblings '(("scribblings/infix-sweet.scrbl" () (parsing-library))))
(define build-deps '("scribble-lib" "racket-doc" "scribble-doc" "Scheme-PLUS-for-Racket" "SRFI-105-for-Racket"))
(define license 'LGPL-3.0-or-later)

(define deps
  '("base"
    "SRFI-110-for-Racket"))
