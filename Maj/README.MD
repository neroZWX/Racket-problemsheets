## Maj function
7. Write a function maj in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise.

For example: 
```Racket
> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) 
'(0 0 0 1 0 1 1 1)
```
# what is Majority funtion?
Majority function (sometimes quorum function) is a threshold function that produces a 1 if and only if the majority of the inputs are 1. Otherwise, the output is 0. This function is only defined for three or more odd inputs. The majority function can be found in various applications such as adders, subtractors, hash functions, and Muller C-element.

For example:
```
     Inputs	           Output
X	Y	Z 	     Q
0	0	0	     0
0	0	1	     0
0	1	0	     0
0	1	1	     1
1	0	0	     0
1	0	1	     1
1	1	0	     1
1	1	1	     1
```
# soultion
step 1
```racket
;define x y z lists and check x list if null 
(define (maj x y z)
    (if(null? x)
        '()
```
step 2
``` racket
;compare the elements in lists of x y z 
 (if (= (car x) (car y)) (cons (car x) (maj (cdr x) (cdr y) (cdr z)))
    (if (= (car x) (car z)) (cons (car x) (maj (cdr x) (cdr y) (cdr z)))
    (cons (car y) (maj (cdr x) (cdr y) (cdr z)))))))
```
## Reference
https://en.wikichip.org/wiki/boolean_algebra/majority_function
