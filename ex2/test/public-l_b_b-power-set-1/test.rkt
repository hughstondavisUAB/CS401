#lang racket

(require "../../ex2.rkt")


(with-output-to-file "output"
                     (lambda ()
                       (define ps (power-set (set)))
                       (print (set-count ps))))
