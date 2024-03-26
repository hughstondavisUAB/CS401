#lang racket

(require "../../ex2.rkt")


(with-output-to-file "output"
                     (lambda ()
                       (print (rect-area (rect 0 1 3 3)))))
