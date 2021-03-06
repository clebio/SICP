; > (square-list (list 1 2 3 4))
; (1 4 9 16)

(define (square-list items)
  (if (null? items)
     () 
     (cons (square (car items)) (square-list (cdr items)))))

(define (square-list-map items)
  (map (lambda (x) (square x)) items))

