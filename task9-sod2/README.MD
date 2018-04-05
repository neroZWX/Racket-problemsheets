# SOD2
9. Write a function sod2 in Racket that takes three lists x, y and z of equal length and containingonly0’sand1’s. Itshouldreturnalistcontaininga1wherethenumberof 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.

 For example: 
```racket 
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) 
'(0 1 1 0 1 0 0 1) 
```
## map and lambda
Applies proc to the elements of the lsts from the first elements to the last. The proc argument must accept the same number of arguments as the number of supplied lsts, and all lsts must have the same number of elements. The result is a list containing each result of proc in order.

Using lambda'to create a function,
The function always returns the value of its last expression.
Examples:
```racket
> (map (lambda (number)
         (+ 1 number))
       '(1 2 3 4))
'(2 3 4 5)

> (map (lambda (number1 number2)
         (+ number1 number2))
       '(1 2 3 4)
       '(10 100 1000 10000))
'(11 102 1003 10004)
```
## soultion
step1
```racket
;define x y z lists first
;check the list of x if null then return null same  as Maj and chse
(define (sod2 x y z)
   (if (null? x)
       '()
```
step2
```racket
;use map function map x y z lists and using lambda expression
;check the corresponding element of each list and sum it all,
;if the result is even then return 0 to a new list.
;if the result is odd then return 1 to a new list.
(map (lambda (x y z)
(if (even? (+ x y z) ) 0 1)) x y z)))
```
step3 
put step1 and step2 together
```racket
(define (sod2 x y z)
   (if (null? x)
       '()
       (map (lambda (x y z)
        (if (even? (+ x y z) ) 0 1)) x y z)))
```
## output
![](https://github.com/neroZWX/Racket-problemsheets/blob/master/sod2/output.PNG)
## reference
https://docs.racket-lang.org/reference/pairs.html
