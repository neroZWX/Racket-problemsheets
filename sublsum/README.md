# sublsum

4. Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn’t matter.
For Example:
``` 
> (sublsum (list 1 2 3 4 -5)) '((2 3 -5) (-5 1 4))

> (sublsum (list 1 2 3 4 5)) '()
```
# solution
## Set 1 
```
(define (sum list)
   (if (null? list)
     #f
      (= (apply + list) 0) ))
```
The first definition of a list is not an empty value，then need to add the number in the list to 0
## set 2
```
(filter sum (cdr (combinations list))) )
```
use filter display function sum's list and Combine the lists added to 0

## set 3
 put 1 and 2 toghter
 ```
 (define (sum list)
   (if (null? list)
     #f
      (= (apply + list) 0) ))
(define (sublsum list)
  (filter sum (cdr (combinations list))) )
  ```
  # function filter
  ```
(filter odd?' (1 2 3 4 5))
 '(1 3 5)
(filter even?' (1 2 3 4 5))
'(2 4)
(filter positive?' (1 2 -3 4 5))
'(1 2 4 5)
```
# function combinations
```
> (combinations '(1 2 3))
'(() (1) (2) (1 2) (3) (1 3) (2 3) (1 2 3))

> (combinations '(1 2 3) 2)
'((1 2) (1 3) (2 3))

```
# output
![](https://github.com/neroZWX/Racket-problemsheets/blob/master/sublsum/result.PNG)
# renference
function 'apply': https://stackoverflow.com/questions/39044742/example-of-apply-other-than-in-racket

'filter' and combinations':https://docs.racketlang.org/reference/pairs.html#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29
