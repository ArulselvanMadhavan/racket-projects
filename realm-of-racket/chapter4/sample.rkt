#lang racket

(if (= (+ 1 2) 3)
    'yup
    'nope)

(if '(1)
    'wtf
    'ohno)

(define x 10)
(cond [(= x 7) 'equal]
      [(odd? x) 'odd]
      [else 'even])

(struct student (name id# dorm) #:transparent)

(define (my-length a-list)
  (if (empty? a-list)
      0
      (add1 (my-length (rest a-list)))))

(struct point (x y) #:transparent)

(define (distance-to-origin p)
  (sqrt (+ (sqr (point-x p)) (sqr (point-y p)))))

(define pt1 (point -1 2))
(define pt2 (point -1 2))

(equal? pt1 pt2)

(require rackunit)

(check-equal? (add1 5) 6)
;; (check-equal? (add1 5) 7)

(check-equal? (sub1 (add1 5)) 5)
