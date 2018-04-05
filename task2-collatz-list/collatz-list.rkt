#lang racket
(define (collatz-list n);define collatz-list method first
  (if (< n 1)#F;set if n <1 then is the result is  false
  (cond ((= n 1);then chenk this number if 1 or not if
         '(1));if number is 1 then return 1
        ((even? n);judge the n if even or not
        (cons n(collatz-list(/ n 2))));if number is even then divide 2
       (else (cons n(collatz-list(+(* 3 n)1)))))));if then number isnt even then run
                                               ;this algorithm.
       
(collatz-list 5)
(collatz-list 9)
(collatz-list 2)