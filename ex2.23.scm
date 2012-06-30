; > (for-each (lambda (x) (newline) (display x)) (list 1 3 5))
; 1
; 3
; 5

(define (for-each f list)
  (if (null? list)
      0
      ((lambda (f list) 
	 (f (car list))
	 (for-each f (cdr list))) f list)))
