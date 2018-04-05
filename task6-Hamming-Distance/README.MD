## Hamming-Distance
6. Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they diﬀer.

For example:
```racket
> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0)) 
5
```
## what is hamming-distance?
In information theory, the Hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different. In other words, it measures the minimum number of substitutions required to change one string into the other, or the minimum number of errors that could have transformed one string into the other. In a more general context, the Hamming distance is one of several string metrics for measuring the edit distance between two sequences.

For example:
Find the distance between the vectors 01101010 and 11011011.
```
01101010
11011011
```
They differ in four places, so the Hamming distance d(01101010, 11011011) = 4.
# soultion
```racket
;set 1 define two lists as list1 and list2
;check then elements of list 1 and list if as 0 at the same time
(define (hamming-distance l1 l2)
 (if (null? l1) 
      0 
      (if (null? l2)
          0
 ```
 ```racket
   ;set 2 check car list1 if equal car list2 and retry 
   ;if list1 euqal list2 otherwise add 1 to the counter
   (if (= (car l1) (car l2)) 
   (hamming-distance (cdr l1)(cdr l2))
    (+ 1 (hamming-distance (cdr l1) (cdr l2)))))))
 ```
 ## References
 http://www.math.ryerson.ca/~danziger/professor/MTH108/Handouts/codes.pdf
 
 https://en.wikipedia.org/wiki/Hamming_weight
