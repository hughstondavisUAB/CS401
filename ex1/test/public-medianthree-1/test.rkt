#lang racket

(require "../../ex1.rkt")


(with-output-to-file "output"
                     (lambda ()
                       (print (median-of-three 100 10 1000))))
