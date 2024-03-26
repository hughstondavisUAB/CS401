#lang racket

;; Exercises 4: Reducing (normalizing/simplifying) lambda calc terms by textual substitution
;;              using four different orders of evaluation (applicative, normal, CBV, CBN)
(provide collect-evaluation-trace
         applicative-order-reduce
         normal-order-reduce
         CBV-order-reduce
         CBN-order-reduce)

; A predicate for terms in the lambda calculus
(define (exp? e)
  (match e
         [(? symbol?) #t]
         [`(,(? exp?) ,(? exp?)) #t]
         [`(lambda (,(? symbol?)) ,(? exp?)) #t]
         [_ #f]))

; Free variables (may be useful for defining capt-avoid-subst)
(define (free-vars exp)
  'todo-or-from-e5)

; Capture avoiding substitution
(define (capt-avoid-subst e0 x e1)
  'todo-or-from-e5)

; Reduce the given expression by exactly one beta-reduction using
; applicative evaluation order. Return the simplified expression in a
; singleton set, or return (set) if there is no applicative order redex.
; Skip over any redexes that cannot be reduced using capture avoiding subst.
(define (applicative-order-reduce e)
  (match e
         [(? symbol? y) (set)]
         [`(lambda (,y) ,body)
          (define body-st (applicative-order-reduce body))
          (if (set-empty? body-st)
              ; No redex found
              (set)
              ; Derive a lambda with simplified body
              (set `(lambda (,y) ,(set-first body-st))))]
         [`((lambda (,y) ,body) ,ea)
          (let ([body-st (applicative-order-reduce body)]
		[ea-st (applicative-order-reduce ea)])
            (if (set-empty? ea-st)
		(if (set-empty? body-st)
		    ; this is the rightmost redex
                    (let ([body+ (capt-avoid-subst body y ea)])
                      (if (eq? body+ 'failed)
			  (set)
			  (set body+)))
                    ; evaluate under lambda
		    (set `((lambda (,y) ,(set-first body-st)) ,ea)))
		; A redex under the argument expression was found
                (set `((lambda (,y) ,body) ,(set-first ea-st)))))]
         [`(,ef ,ea)
	  (let ([ef-st (applicative-order-reduce ef)]
		[ea-st (applicative-order-reduce ea)])
            (if (set-empty? ea-st)
                ; No redex found
                (if (set-empty? ef-st)
		    (set)
		    (set `(,(set-first ef-st) ,ea)))
                ; Argument expression contained a redex
                (set `(,ef ,(set-first ea-st)))))]))


; Reduce the given expression by exactly one beta-reduction using
; normal evaluation order. Return the simplified expression in a
; singleton set, or return (set) if there is no normal-order redex.
; Skip over any redexes that cannot be reduced using capture avoiding subst.
(define (normal-order-reduce e)
  'todo)

; Reduce the given expression by exactly one beta-reduction using
; call-by-value evaluation order. Return the simplified expression in a
; singleton set, or return (set) if there is no CBV order redex.
(define (CBV-order-reduce e)
  'todo)

; Reduce the given expression by exactly one beta-reduction using
; call-by-name evaluation order. Return the simplified expression in a
; singleton set, or return (set) if there is no applicative order redex.
(define (CBN-order-reduce e)
  'todo)

; Takes one of the four step/reduce functions and an expression in the lambda calculus (satisfying exp?)
; Yields a list representing the full evaluation trace from e to a value
; Note, this function will non-terminate on programs like Omega that cannot be reduced to a value.
(define (collect-evaluation-trace step-f e)
  (let loop ([latest (set e)]
             [trace '()])
    (if (set-empty? latest)
        (reverse trace)
        (loop (step-f (set-first latest))
              (cons (set-first latest) trace)))))

