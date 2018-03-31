#lang racket
(define (hamming-distance l1 l2);define two lists first
 (if (null? l1) ;then check the list1 if null and return 0 as null
      0 
      (if (null? l2);need check null l2 as well;
          0;oterwise:
          ;check car list1 if equal car list2 
   (if (= (car l1) (car l2)) (hamming-distance (cdr l1)(cdr l2))
    (+ 1 (hamming-distance (cdr l1) (cdr l2)))))));if the two lists are not euqal then add 1 to
                                                  ;the counter
           ;http://www.maths.manchester.ac.uk/~pas/code/notes/part2.pdf

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0));output will be 5