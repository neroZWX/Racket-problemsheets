#lang racket
(define (maj x y z)
    (if(null? x)
        '()
    (if (= (car x) (car y)) (cons (car x) (maj (cdr x) (cdr y) (cdr z)))
    (if (= (car x) (car z)) (cons (car x) (maj (cdr x) (cdr y) (cdr z)))
    (cons (car y) (maj (cdr x) (cdr y) (cdr z)))))))
        