# task3-rcycle-rcycle
Write, from scratch, two functions in Racket. The ﬁrst is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.

For example: 
```Racket 
> (lcycle (list 1 2 3 4 5))
'(2 3 4 5 1) 

> (rcycle (list 1 2 3 4 5))
'(5 1 2 3 4)
```
# soultion
For lcycle:
```racket
(define (lcycle list);define a method lcycle as list
  (if (null? list)#F;if the list is null then return false
      (append(cdr list);get the second number in the list and get another list 
             (cons(car list);display the remaining numbers then merge two lists
                  '()))))
```
FOR recyle:
step1 
```racket
;get reversel fuction first
(define(reversel l)
 (define (reversel-aux l a)
  (if (null? l)
   a
   (reversel-aux (cdr l)(cons (car l) a))))
 (reversel-aux l null))   
 ```
 step2
 ```racket
 (define(recyle l);use reversel method first get the last number in a list,and get another list display remaining numbers
  (append (list(car (reversel l)));merge that two lists and display
          (reversel (cdr (reversel l)))))
 ```     
 ## reference
reversel fuction adapt from: https://github.com/neroZWX/Racket-problemsheets/blob/master/problem-sheet-racket.pdf
