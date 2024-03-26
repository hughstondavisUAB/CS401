#lang racket

;; Exercise set 2: rectangle library, power-set, and inclusion-exclusion principle


(provide rect
         rect?
         rect-area
         rect-intersect
         rect-list-intersect
         all-sub-rectangles
	 total-rect-area
	 power-set)

; power-set: takes an arbitrary Racket (set) and returns its power-set, the set of all its subsets
(define (power-set st)
  'todo)

; any two opposing corners of a grid-aligned rectangle as pairs (x0,y0), (x1,y1)
; --> `(rect ,lower-left-x ,lower-left-y ,upper-right-x ,upper-right-y) 
(define (rect x0 y0 x1 y1)
  ; return a normalized rect-tagged s-expr representation of the rectangle
  'todo)

; Predicate defining a rectangle
(define (rect? r)
  (match r
         [`(rect ,x0 ,y0 ,x1 ,y1)
          (and (andmap integer? `(,x0 ,x1 ,y0 ,y1))
               (<= x0 x1)
               (<= y0 y1))]
         [else #f]))

; Given a rect?, yield its (integer?) area
(define (rect-area rect)
  'todo)

; Compute the rectangular intersection of any two rectangles
; If there is no intersection, return a rectangle with 0 area.
(define (rect-intersect rect0 rect1)
  'todo)

; Compute the intersection of a list of one or more rectangles
; E.g., the list `((rect 0 0 10 10) (rect 0 -5 10 1) (rect -5 -5 2 5))
;       has intersection `(rect 0 0 2 1)
(define (rect-list-intersect rect-list)
  'todo)

; Compute a Racket (set) of all sub-rectangles in the given rectangle
; We will call any rectangle r', with integer side-lengths of at least 1, a "sub-rectangle" of r iff r fully contains r'
; E.g., (all-sub-rectangles (rect 0 0 0 0)) => (set)
; E.g., (all-sub-rectangles (rect 0 0 1 1)) => (set `(rect 0 0 1 1))
; E.g., (all--sub-rectangles (rect 10 5 11 7)) => (set `(rect 10 5 11 7) `(rect 10 5 11 6) `(rect 10 6 11 7))
; Hint: can you solve this using the `foldl` and `range` functions?
(define (all-sub-rectangles r)
  'todo)

; total-rect-area: takes a list of rectangles (defined in e2) and returns the total covered area
; Note: do not double-count area covered by >1 rectangles
; E.g., (total-rect-area '((rect 0 0 2 2) (rect 1 1 3 3))) => 7
; Hint: use the power-set function and the inclusion-exclusion principle; review your functions from e2
(define (total-rect-area rect-list)
  'todo)


