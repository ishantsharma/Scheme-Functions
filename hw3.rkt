;;;; Homework 3,
;;;; Team: Static Startup (Haruna Yamakawa and Ishant Sharma)



;;; Question 1
;;; Function singleadd: two lists -> list
;;; Returns a new list with the sum of the first elements of the two lists as the first element,
;;; the rest of the elements of the returned list are the remaining elements of xs
(define (singleadd xs ys)
          (cond ((null? xs) '()) 
                ((null? ys) '())
                 (else (cons (+ (car xs)(car ys)) (cdr xs)))))

;;; Question 2
;;; Function wedge: a list xs and an element e -> list
;;; Returns a new list that contains the first element of xs followed by e, followed by the remaining elements of xs
(define (wedge xs e)
  (cond ((null? xs) '())
        (else (cons (car xs) (cons e (cdr xs))))))

;;; Question 3
;;; Function amplify: list xs and a number factor -> list
;;; Returns a new list formed by multiplying the elements of xs by the number factor
(define (amplify xs factor)
  (cond ((null? xs) '())
  (else (cons (* (car xs) factor) (amplify (cdr xs) factor))) 
  ))

;;; Question 4
;;; Function make-list: three integers -> list
;;; Returns a list of integers from start to stop separated by step
(define (make-list start stop step)
  (if (> start stop) '() (cons start (make-list (+ start step) stop step)))) ;construct a list where start is incremented by step in each recursive call

;;; Question 5
;;; Function merge: two lists -> list
;;; Returns a new list formed by alternating the elements of both lists
(define (merge xs ys)
  (cond ((null? xs) '())
        ((null? ys) '())
        (else (cons (car xs) (cons (car ys) (merge (cdr xs) (cdr ys)))))));construct a list with (car xs) and (car ys) recursively

;;; Question 6
;;; Function skip-while: predicate and list -> list
;;; Returns a list where the function skips over the first few elements of the input
;;; list that meet the criteria specified by the predicate. The first element that does not
;;; meet criteria and everything after it is included in the returned list
(define (skip-while p xs)
  (cond ((null? xs) '())
  ((p (car xs)) (skip-while p (cdr xs))) ;recursive call is predicate p is #t for (car xs)
  (else xs))) ; return xs if predicate p is #f 

;;; Question 7
;;; Function all-the-same?: list -> boolean
;;; Returns #t if ALL the elements of the list are the same or if the list is empty
;;; returns #f otherwise.
(define (all-the-same? xs)
  (cond ((null? xs) #t)
        ((equal? (length xs) 1) #t) ; when length of the list is 1 or recursive calls have reached the last element
        ((equal? (car xs) (car(cdr xs))) (all-the-same? (cdr xs)));recursive call if #t
        ((not(equal? (car xs) (car(cdr xs)))) #f)))


;;; Question 8
;;; Function sum_of_squares: list -> integer
;;; Returns the sum of the squares of the elements in the list. 
(define (sum_of_squares xs)
  (tsum_of_squares xs 0))

  
(define (tsum_of_squares xs sofar)
  (cond ((null? xs) sofar)
        (else (tsum_of_squares (cdr xs) (+ (* (car xs) (car xs)) sofar)))))
 

