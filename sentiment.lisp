;;;; sentiment.lisp
;;;; Copyright (c) 2012, Rob Blackwell.  All rights reserved.

(in-package #:cl-sentiment)

(defvar *word-scores* nil)

(defun words (text)
  "Returns a list of words in the given text using simplistic
tokenization."
  (cl-ppcre:all-matches-as-strings "[a-z]+" (string-downcase text)))

(defun load-word-scores (filename)
  "Loads a word score table from a tab separated file."
  (let ((x (make-hash-table :test #'equal)))
    (with-open-file (stream filename :external-format :iso-8859-1)
      (do ((line (read-line stream nil)
		 (read-line stream nil)))
	  ((null line))
	(let ((s (cl-ppcre:split #\Tab line)))
	  (setf (gethash (first s) x) (read-from-string (second s))))))
    x))

(defun initialize (&optional (filename (merge-pathnames (asdf:system-source-directory :cl-sentiment) "AFINN-111.txt")))
  "Initializes cl-sentiment with a default word-score table."
  (setf *word-scores* (load-word-scores filename)))

(defun sentiment (text &optional (table *word-scores*))
  "Returns the sentiment measure for the given text."
  (let* ((words (words text))
	 (score (reduce  #'+ (mapcar #'(lambda (word) (gethash word table 0)) words)))
	 (comparative (/ score (length words))))
    (values score comparative)))


