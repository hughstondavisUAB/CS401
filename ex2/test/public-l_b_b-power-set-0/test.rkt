#lang racket

(require "../../ex2.rkt")


(with-output-to-file "output"
                     (lambda ()
                       (define ps (power-set (set 2 3 4)))
                       (print (set-count ps))))
