#lang racket

(require "../../ex1.rkt")


(with-output-to-file "output"
                     (lambda ()
                       (print (implies-value #t #f))))
