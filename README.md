cl-sentiment
============

cl-sentiment is a Common Lisp library that uses the AFINN-111 wordlist to perform sentiment analysis on arbitrary text.

Inspired by https://github.com/thisandagain/sentiment

The AFINN word list is by Finn Årup Nielsen available from http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010

You might also like to read his paper:

"A new ANEW: Evaluation of a word list for sentiment analysis in microblogs",
Proceedings of the ESWC2011 Workshop on 'Making Sense of Microposts':
Big things come in small packages 718 in CEUR Workshop Proceedings : 93-98. 2011 May. 
http://arxiv.org/abs/1103.2903

The AFINN files are copyright protected and distributed under
the terms of the Open Database License (ODbL) v1.0,
http://www.opendatacommons.org/licenses/odbl/1.0/

Example
-------

	(ql:quickload "cl-sentiment")

	(cl-sentiment:initialize)

	(cl-sentiment:sentiment "foo bar")


Rob Blackwell

December 2012