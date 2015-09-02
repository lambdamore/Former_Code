(define (count number)
 (define (discretize number)
  (define (Dis number)
    (if (< number 10) (list number) (cons (mod number 10) (discretize (floor (/ number 10))))))
  (reverse (Dis number)))
 (let ((l (discretize number)))
	(cond ((= number 1000) 11)
		  ((or (= number 1) (= number 2) (= number 6)) 3)
          ((or (= number 3) (= number 7) (= number 8)) 5)
          ((or (= number 4) (= number 5) (= number 9)) 4)
