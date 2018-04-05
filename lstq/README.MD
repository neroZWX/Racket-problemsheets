# Lstq
10. Write a function lstq in Racket that takes as arguments two lists l and m of equal length and containing numbers. It should return d, the distance given by the sum of the square residuals between the numbers in the lists: 
                             ![](https://github.com/neroZWX/Racket-problemsheets/blob/master/lstq/algoritm.PNG)

This means take the ith element of m from the ith element of l and square the result for all i. Then add all of those to get d. For example: 
```racket
> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8)) 
54.61
```
## soultion
step1
```racket
;define a  square algorithm first
;adapted from:https://stackoverflow.com/questions/22560573/how-to-do-square-in-racket
(define (square x)
  (* x x ))
```
step2
```racket
;define two lists x and y.
;check list of x and list of y if  they are all empty values or one of them is null value then retrun 0,otherwise go ahead the following algorithm
;if the list of x and list of y arent empty list,then recursion of the(- (car x) (car y)which is first element of x list minus first element of y list and add the recursion of the remaining elemtns of x'list and y,list
(define (lstq x y)
  (if(null? x)
  0
  (if(null? y)
  0
  (+ (square(- (car x)(car y)))
     (lstq (cdr x) (cdr y))))))
```
step3 
Put it all togehter
```racket
(define (square x)
  (* x x ))
(define (lstq x y)
  (if(null? x)
  0
  (if(null? y)
  0
  (+ (square(- (car x)(car y)))
     (lstq (cdr x) (cdr y))))))
 ```
 ## output 
 ![](https://github.com/neroZWX/Racket-problemsheets/blob/master/lstq/output.PNG)
 ## References
 https://stackoverflow.com/questions/22560573/how-to-do-square-in-racket
 
 
