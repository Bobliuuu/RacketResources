#lang racket

(require dyoo-while-loop)

(define (ordinal x n)
  (modulo (+ (sqr x) 1) n))

(define (rollard-pho n)
  (let ([x 2]
        [y 2]
        [d 1])
    (while (= d 1)
           (set! x (ordinal x n))
           (set! y (ordinal (ordinal y n) n))
           (set! d (gcd (abs (- x y)) n)))
    (cond [(= d n) -1]
          [else d])))


(rollard-pho 145)