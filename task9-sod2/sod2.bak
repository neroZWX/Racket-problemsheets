#lang racket
(define (sod2 x y z);define x y z lists first
   (if (null? x);check the list of x if null then return null
       '()
       (map (lambda (x y z);use map function map x y z lists and using lambda expression
         (if (even? (+ x y z) ) 0 1)) x y z)));check the corresponding element of each list and sum it all,
                                              ;if the result is even then return 0 to a new list.
                                              ;if the result is odd then return 1 to a new list.