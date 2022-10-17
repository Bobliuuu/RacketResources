#lang racket

(require rackunit)

; 'a list -> 'a list
; sorts a list using a merge sort algorithm
(define (merge-sort xs)
  
  ; 'a list * int -> 'a list
  ; returns the 1st n elements of xs
  (define (take xs n)
    (if (or (= n 0)(null? xs))
        null
        (cons (car xs)(take (cdr xs) (- n 1)))))

  ; 'a list * int -> 'a list
  ; returns xs without its 1st n elements
  (define (drop xs n)
    (if (or (= n 0)(null? xs))
        xs
        (drop (cdr xs)(- n 1))))

  ; 'a list * 'a list -> 'a list
  ; merges and sorts both input lists into a singular list
  ; (assumes both lists are sorted)
  (define (merge xs ys)
    (cond [(null? xs) ys]
          [(null? ys) xs]
          [else
           (if (< (car xs)(car ys))
               (cons (car xs)(merge (cdr xs) ys))
               (cons (car ys)(merge xs (cdr ys))))]))

  (if (< (length xs) 2)
      xs
      (let ([split-length (quotient (length xs) 2)])
        (merge (merge-sort (take xs split-length))
               (merge-sort (drop xs split-length))))))


(check-equal? (merge-sort null) null)
(check-equal? (merge-sort (list 1)) (list 1))
(check-equal? (merge-sort (list 6 4)) (list 4 6))
(check-equal? (merge-sort (list 4 6)) (list 4 6))
(check-equal? (merge-sort (list 3 5 2 1 4 7 9 8 6)) (list 1 2 3 4 5 6 7 8 9))
(check-equal? (merge-sort (list 1 2 3 4 5 6 7 8 9)) (list 1 2 3 4 5 6 7 8 9))
