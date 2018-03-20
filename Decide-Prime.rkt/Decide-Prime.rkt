#lang racket
(define (set-number a);set 1 first set the number if <2 then return false
 (< a 2))#f
(define (decide-prime? b);then define the method as decide-prime
 (if (< b 2)#f;if the number <2 return false, else the number >2 go next aglorithm
    (not (for/or [(c (in-range 2 b))]=(= 0 (remainder b c))))));use bool method  run the aglorithm 
    ;If the algorithm sets up then output result, otherwise return false.
 


