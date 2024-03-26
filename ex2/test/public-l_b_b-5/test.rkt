#lang racket

(require "../../ex2.rkt")


(with-output-to-file "output"
                     (lambda ()
                       (print (set-count (all-sub-rectangles (rect 1 1 31 26))))))
