;;;; cl-sentiment.asd
;;;; Copyright (c) 2012, Rob Blackwell.  All rights reserved.

(asdf:defsystem #:cl-sentiment
  :version "0.0.1"
  :author "Rob Blackwell"
  :description "A sentiment analysis library for Common Lisp."
  :serial t
  :depends-on (#:cl-ppcre
	       #:rt)
  :components ((:file "package")
	       (:file "sentiment")
	       (:file "tests")))

