;; *Exercise 4.36:* *Note Exercise 3-69:: discussed how to generate
;; the stream of _all_ Pythagorean triples, with no upper bound on
;; the size of the integers to be searched.  Explain why simply
;; replacing `an-integer-between' by `an-integer-starting-from' in
;; the procedure in *Note Exercise 4-35:: is not an adequate way to
;; generate arbitrary Pythagorean triples.  Write a procedure that
;; actually will accomplish this.  (That is, write a procedure for
;; which repeatedly typing `try-again' would in principle eventually
;; generate all Pythagorean triples.)

(define (a-pythagorean-triple-between)
  (let ((i (an-integer-starting-from 1)))
    (let ((j (an-integer-starting-from 1)))
      (require (>= j i))
      (let ((k (an-integer-starting-from 1)))
	(require (>= k j))
	(require (= (+ (* i i) (* j j)) (* k k)))
	(list i j k)))))
