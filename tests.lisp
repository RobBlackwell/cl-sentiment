;;;; tests.lisp
;;;; Copyright (c) 2012, Rob Blackwell.  All rights reserved.

(in-package #:cl-sentiment)

;; Regression tests can be run as follows
;; (cl-seniment:initialize)
;; (rt:do-tests)

(rt:deftest cats-are-stupid
    (eql (sentiment "Cats are stupid") -2) t)

(rt:deftest cats-are-totally-amazing
    (eql (sentiment "Cats are totally amazing!") 4) t)
