; while I dislike the 'my-' construct, I don't really want to over-ride the built-in 'cons', 'car', and 'cdr' either

(define (my-cons x y)
  (lambda (m) (m x y)))

(define (my-car z)
  (z (lambda (p q) p)))

(define (my-cdr z)
  (z (lambda (p q) q)))







