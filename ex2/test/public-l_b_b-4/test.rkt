#lang racket

(require "../../ex2.rkt")


(with-output-to-file "output"
                     (lambda ()
                       (print (set-count (all-sub-rectangles (rect 10 5 11 7))))))
