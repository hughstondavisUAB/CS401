#lang racket

(require "../../ex2.rkt")


(with-output-to-file "output"
                     (lambda ()
                       (print (total-rect-area '()))))
