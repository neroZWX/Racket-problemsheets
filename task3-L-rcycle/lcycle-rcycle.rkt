#lang racket
(define (lcycle list);define a method lcycle as list
  (if (null? list)#F;if the list is null then return false
      (append(cdr list);get the second number in the list and get another list 
             (cons(car list);display the remaining numbers then merge two lists
                  '()))))
(define(reversel l);adapt from problem-sheet question9,first define a method called reversel that takes a list and returns it reversed
 (define (reversel-aux l a)
  (if (null? l)
   a
   (reversel-aux (cdr l)(cons (car l) a))))
 (reversel-aux l null))
(define(recyle l);use reversel method first get the last number in a list,and get another list display remaining numbers
  (append (list(car (reversel l)));merge that two lists and display
          (reversel (cdr (reversel l)))))


(lcycle (list 1 2 3 4 5));output will be'(2 3 4 5 1)
(recyle (list 1 2 3 4 5));output will be'(5 1 2 3 4)
