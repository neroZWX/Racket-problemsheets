# task1-Decide-prime
1. Write,fromscratch,afunctioninRacketthatusesabrute-forcealgorithmthattakes a single positive integer and return true if the number is a prime and false otherwise. Call the function decide-prime
```Racket
(decide-prime? 2)#t
(decide-prime? 3)#t
(decide-prime? 4)#f
(decide-prime? 6)#f
```
## What is Prime number?
A prime number is a whole number greater than 1 whose only factors are 1 and itself. A factor is a whole numbers that can be divided evenly into another number. The first few prime numbers are 2, 3, 5, 7, 11, 13, 17, 19, 23 and 29. Numbers that have more than two factors are called composite numbers. The number 1 is neither prime nor composite. 

For every prime number p, there exists a prime number p' such that p' is greater than p.  This mathematical proof, which was demonstrated in ancient times by the Greek mathematician Euclid, validates the concept that there is no "largest" prime number. As the set of natural numbers N = {1, 2, 3, ...} proceeds, however, prime numbers generally become less frequent and are more difficult to find in a reasonable amount of time. As of this writing, the largest known prime number has more than 23 million digits. It is referred to as M77232917 and has one million more digits than the previous record holder

![](https://github.com/neroZWX/Racket-problemsheets/blob/master/Decide-Prime.rkt/prime.PNG)

## How to determine if a number is prime?
A computer can be used to test extremely large numbers to see if they are prime.  But, because there is no limit to how large a natural number can be, there is always a point where testing in this manner becomes too great a task even for the most powerful supercomputers.

Various algorithms have been formulated in an attempt to generate ever-larger prime numbers. For example, suppose n is a whole number, and it is not yet known if n is prime or composite. First, take the square root (or the 1/2 power) of n; then round this number up to the next highest whole number and call the result m.  Then find all of the following quotients:
```          
                                     qm = n / m
                                 q(m-1) = n / (m-1)
                                 q(m-2) = n / (m-2)
                                 q(m-3) = n / (m-3)
                                     . . .
                                     q3 = n / 3
                                     q2 = n / 2
 ```
 ## Refence 
 prime number: http://whatis.techtarget.com/definition/prime-number
 decide-prime in racket language: https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion
 racket tuotial: http://blog.csdn.net/yemeishenme/article/details/51471037
                                     
                                     
                            
