;;;; package.lisp
;;;; Copyright (c) 2012, Rob Blackwell.  All rights reserved.

(defpackage #:cl-sentiment
  (:use #:cl)
  (:export #:sentiment
	   #:initialize
	   #:load-word-scores))

