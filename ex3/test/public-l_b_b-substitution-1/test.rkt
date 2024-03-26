#lang racket

(require "../../e3.rkt")


(with-output-to-file "output"
                     (lambda ()
                       (print (capt-avoid-subst '(lambda (a) (b b)) 'b 'c)))
                     #:exists 'replace)
