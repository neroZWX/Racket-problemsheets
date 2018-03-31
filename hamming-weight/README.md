# hamming-weight
5. Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it.

For example:
``` 
> (hamming-weight (list 1 0 1 0 1 1 1 0)) 
5 
```
## what is hamming-weight
The Hamming weight of a string is the number of symbols that are different from the zero-symbol of the alphabet used. It is thus equivalent to the Hamming distance from the all-zero string of the same length. like:
``` 
; There are five digits in total except 0 then answer is 5
> (hamming-weight (list 1 0 1 0 1 1 1 0)) 
5 
```
# solutions 
there art two ways in my solution cases,one of is use lambda function,another is use basic funtion

## Lambda
```
(define (hamming-weigh l)
  (count (lambda (n) (not (zero? n)))
         l))
(hamming-weigh (list 1 2 2 2 0)); output will be 4
```
## basic funtion 
```
; set 1 check the list if null
; set 2 check the element of list if is a zero
; set 3 add 1 to the counter and Retry 
; set 4 If the above conditions are not satisfied, the results will be displayed directly.
(define (hamming-weigh l)
  (cond ((null? l) 0)
        ((not (= (car l) 0))
         (+ 1 (amming-weigh (cdr l))))
        (else  
         (hamming-weigh (cdr l)))))
 (hamming-weigh (list 1 2 2 2 0)); output will be 4
```
# output result
![](https://github.com/neroZWX/Racket-problemsheets/blob/master/hamming-weight/output.PNG)
# Reference
lambda:https://stackoverflow.com/questions/36595710/counting-non-zero-values-from-a-list-with-scheme/36601853#36601853

https://docs.racket-lang.org/guide/lambda.html

https://stackoverflow.com/a/36601853



