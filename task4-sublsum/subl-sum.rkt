#lang racket
(define (sum list);first define a method as sum list, then set 1 check the list whether null or not
   (if (null? list);then use 'apply'  the method to puls the list whether 0 adapt:https://stackoverflow.com/questions/39044742/example-of-apply-other-than-in-racket 
     #f
      (= (apply + list) 0) ))
(define (sublsum list);define sublsum list
  (filter sum (cdr (combinations list))) );use filter to display a list which is true(euqal 0)
  ;adapt from https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Flist..rkt%29._combinations%29%29
