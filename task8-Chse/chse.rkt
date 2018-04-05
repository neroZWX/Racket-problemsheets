#lang racket
(define (chse x y z);defein  x y z lists
    (if (null? x);check the list of x if null then return null list same as task7(maj)
        '()
      (if (= (car x) 1);if the first element of list x equal 1 then do cons first element of y list
                       ;and recur
                       ;if the first element of list x not equal 1 then do cons first element of z list and recur.
        (cons(car y)(chse(cdr x)(cdr y)(cdr z)))
        (cons(car z)(chse(cdr x)(cdr y)(cdr z))))))
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1));the result will be '(0 1 0 1 0 0 1 1)
