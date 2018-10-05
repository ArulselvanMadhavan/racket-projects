#lang racket
(require 2htdp/image)

(define WIDTH 100)
(define HEIGHT 200)

(define X-CENTER (quotient WIDTH 2))
(define Y-CENTER (quotient HEIGHT 2))

(unless (> HEIGHT 0)
  (error 'guess-my-number "HEIGHT may not be negative"))

(define SQR-COLOR "red")
(define SQR-SIZE 10)
(define (draw-image img x y)
  (place-image (square SQR-SIZE "solid" SQR-COLOR)
               x y
               img))
