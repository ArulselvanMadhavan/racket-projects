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
