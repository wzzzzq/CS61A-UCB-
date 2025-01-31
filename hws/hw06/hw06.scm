(define (cddr s) (cdr (cdr s)))

(define (cadr s) 
'YOUR-CODE-HERE
 (car(cdr s))
)

(define (caddr s) 
'YOUR-CODE-HERE
 (car(cddr s))
)

(define (ascending? lst)
 'YOUR-CODE-HERE
  (cond 
  ((or (null? lst) (null? (cdr lst))) #t)
  ((<= (car lst) (cadr lst)) (ascending? (cdr lst)))
  (else #f)
  )
)

(define (interleave lst1 lst2)
 'YOUR-CODE-HERE
 (if (or (null? lst1) (null? lst2)) (append lst1 lst2)
 (cons (car lst1) (interleave lst2 (cdr lst1)))
 )
 )

(define (my-filter func lst) 
'YOUR-CODE-HERE
 (cond ((null? lst) '())
    ((func (car lst)) (cons (car lst) (my-filter func (cdr lst))))
    (else (my-filter func (cdr lst)))
 )
)

(define (no-repeats lst) 
'YOUR-CODE-HERE
 (if (null? lst) lst
   (cons (car lst)
    (no-repeats (my-filter (lambda (x) (not (= x (car lst)))) lst)))
      )
)

