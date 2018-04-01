# Chse Function
8. Write a function chse in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing the elements of y in the positions where x is 1 and the elements of z otherwise. 
For example: 
```racket
> (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 0 1 0 0 1 1) 

```
## soultion
step1
```racket
(define (chse x y z);defein  x y z lists
    (if (null? x);check the list of x if null then return null list same as task7(maj)
        '()
```
step2
```racket
;if the first element of list x equal 1 then do cons first element of y list and recur
;if the first element of list x not equal 1 then do cons first element of z list and recur.
        (if (= (car x) 1)
        (cons(car y)(chse(cdr x)(cdr y)(cdr z)))
        (cons(car z)(chse(cdr x)(cdr y)(cdr z))))))
```
step3 put it all toghter
```racket
(define (chse x y z)
    (if (null? x)
        '()
      (if (= (car x) 1)
        (cons(car y)(chse(cdr x)(cdr y)(cdr z)))
        (cons(car z)(chse(cdr x)(cdr y)(cdr z))))))
```
# output
![](https://github.com/neroZWX/Racket-problemsheets/blob/master/Chse/output.PNG)
