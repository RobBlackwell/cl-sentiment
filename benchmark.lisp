;; Benchmarks

(defvar *text* 
  '("In America I doubt it could sustain itself without descending into identity politics and ego."
    "You are deluding yourself if you think that identity politics and ego are purely American."
    "Posting a show that cost $5 and was for charity is pretty low and I thought better of BoingBoing. A clip or two would be great, but just pirating something like this is lame."
    "I paid the $5, only got to see the last 30 minutes of the event, and cant download it today, because when I log in, it asks for my credit card information. So the only way it looks like Ill get to watch it is through a pirated copy."
    "Thanks for posting it, Cory! What Ive seen of the debate was awesome, but from a technical and customer service standpoint, it was a catastrophe."
    "Bill OReillys total inability to shut up while anyone else is speaking makes me either wonder how he ever got his job, or think that you can be inordinately successful just by bullying."))

(defun bench ()
  (let ((buffer))
    (dotimes (i 64000)
      (push (nth (mod i (length *text*)) *text*) buffer))
    buffer))


(defun test ()
  (let ((start (get-internal-real-time)))
    (mapcar #'cl-sentiment:sentiment (bench))
    (- (get-internal-real-time) start)))


;; On my Late 2010 MacBook Pro, running SBCL 1.1.1

;; 2000 Operations
;; cl-sentiment - 51 ms
;; sentiment - 51 ms
;; sentimental - 1385 ms

;; 64000 Operations
;; cl-sentiment - 1462 ms
;; sentiment - 1460 ms
;; sentimental - 40480 ms

;; so it looks like it's neck and neck with Node.js



