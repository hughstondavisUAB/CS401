#lang racket

;; Exercise Set 1: complete five simple functions

(provide implies-value
         append-longer-string
         median-of-three
         point-distance
         shortest-distance
         fib
         categorize-number)


; Compute the truth value of the proposition "x --> y" where x and y are booleans
(define (implies-value x y)
  'todo)

; takes two "strings", and appends the larger string to the end of the smaller string
; if they are the same size, keep the original order (str1, str2)
(define (append-longer-string str1 str2)
  'todo)

; Compute the median of three integers
(define (median-of-three x y z)
  'todo)

; Compute the distance between two (x,y) pairs of integers
(define (point-distance x0 y0 x1 y1)
  'todo)

; compute the shortest distance between three different points
; each pt# is a pair of values, (cons x y), of its position
(define (shortest-distance pt1 pt2 pt3)
  'todo)

; Compute the fibonnaci number given an integer (ensure your sequence starts with 0, 1, 1). HINT: tail-recursive fibonnaci might be faster 
(define (fib n)
  'todo)

; Complete the function takes a single integer and categorizes it as "positive", "negative", "zero", as well as  "even", or "odd". The function should return a string of your answer. "positive-odd", "negative-even", etc are valid options
(define (categorize-number n)
  'todo)
