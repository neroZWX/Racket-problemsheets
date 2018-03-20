#lang racket
(define (lcycle list)
  (if (null? list)#F
      (append(cdr list)
             (cons(car list)
                  '()))))
(define(reversel l)
 (define (reversel-aux l a)
  (if (null? l)
   a
   (reversel-aux (cdr l)(cons (car l) a))))
 (reversel-aux l null))
(define(recyle l)
  (append (list(car (reversel l)))
          (reversel (cdr (reversel l)))))


(lcycle (list 1 2 3 4 5))
(recyle (list 1 2 3 4 5))