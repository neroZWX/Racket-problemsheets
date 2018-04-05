#lang racket
(define (maj x y z);create X Y Z list for those lists containing only 0's and 1's
    (if(null? x);check x if null,then output null
        '()
    ;The elements in each list should be compared with the elements in other lists.
    ;like the list of x compare with the list of y and the list of z.
    (if (= (car x) (car y)) (cons (car x) (maj (cdr x) (cdr y) (cdr z)))
    (if (= (car x) (car z)) (cons (car x) (maj (cdr x) (cdr y) (cdr z)))
    (cons (car y) (maj (cdr x) (cdr y) (cdr z)))))))
    
 (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
 ;the result will be '(0 0 0 1 0 1 1 1)
