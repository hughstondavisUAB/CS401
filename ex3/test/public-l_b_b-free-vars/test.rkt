#lang racket

(require "../../e3.rkt")


(with-output-to-file "output"
                     (lambda ()
                       (print (sort (set->list (free-vars '(lambda (x) (f (g x))))) symbol<?)))
                     #:exists 'replace)
