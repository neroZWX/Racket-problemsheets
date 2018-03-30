#lang racket
(define (sum list)
   (if (null? list)
     #f
      (= (apply + list) 0) ))
(define (sublsum list)
  (filter sum (cdr (combinations list))) )