(define (append list1 list2)
  (cond ((null? list1) list2)
	(else (cons (car list1) (append (cdr list1) list2)))))

(define (last-pair L)
  (if (null? (cdr L))
      (car L)
      (last-pair (cdr L))))

(define (reverse L)
  (if (null? L)
      ()
      (append (reverse (cdr L)) (list (car L)))))

(define (deep-reverse L)
  (cond ((and (pair? (car L)) (null? (cdr L))) (deep-reverse (car L)))
	((null? (cdr L)) (car L))
	((not (pair? (car L))) (list (deep-reverse (cdr L)) (car L)))
	(else (list (deep-reverse (cdr L)) (deep-reverse (car L))))))

