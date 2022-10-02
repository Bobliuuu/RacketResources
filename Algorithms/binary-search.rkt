;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname binary-search) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor mixed-fraction #f #t none #f () #t)))
(define (mid left right)
  (quotient (+ left right) 2))

(define (binary-search nums left right target)
  (cond
    [(> left right) -1]
    [(= target (list-ref nums (mid left right))) (mid left right)]
    [(< target (list-ref nums (mid left right)))
     (binary-search nums left (- (mid left right) 1) target)]
    [else
     (binary-search nums (+ (mid left right) 1) right target)]))

(define foo (cons 2 (cons 5 (cons 6 (cons 8 (cons 9 (cons 10 empty)))))))
(check-expect (binary-search foo 0 (- (length foo) 1) 5) 1)
(check-expect (binary-search foo 0 (- (length foo) 1) 24) -1)