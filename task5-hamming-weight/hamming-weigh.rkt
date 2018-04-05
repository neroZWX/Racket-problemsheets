#lang racket
;use lambda function as solution
;lambda refrence:https://stackoverflow.com/questions/25696063/lambda-in-racket-explained
(define (hamming-weigh l)
  (count (lambda (n) (not (zero? n)))
         l))
;another way 
(define (Hamming-weigh l)
  (cond ((null? l) 0)
        ; if the list is empty then return zero
        ((not (= (car l) 0)); this element of list is not zero
         (+ 1 (Hamming-weigh (cdr l)))) ; add 1 to the counter and restart counter
        (else  ; vIf the above conditions are not satisfied, run the following algorithm.
         (Hamming-weigh (cdr l)))))
;adapt from: https://stackoverflow.com/questions/36595710/counting-non-zero-values-from-a-list-with-scheme/36601853#36601853
(hamming-weigh (list 1 2 2 2 0 ));

(Hamming-weigh (list 1 2 2 2 0 ))

