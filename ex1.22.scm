; search for primes, report runtime

(define (timed-prime-test start-num n)
  (search-for-primes start-num n (runtime)))

(define (search-for-primes start n start-at)
  (if (= n 0) true
      (if (prime? start start-at)
          (search-for-primes (+ start 1) (- n 1) (runtime))
          (search-for-primes (+ start 1) n (runtime)))))

(define (prime? n start-at)
  (if (= n (smallest-divisor n))
      (report-prime n start-at)
      #f))

(define (report-prime n start-at)
  (newline)
  (display n)
  (display " *** ")
  (display (/ (- (runtime) start-at) (sqrt n))))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (next num)
  (if (= num 2)
      3
      (+ num 2)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))









