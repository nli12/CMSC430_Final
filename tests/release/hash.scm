(begin
(define h (make-hash))
(hash-set! h 'a 'b)
(hash-set! h 'a 'z)
(hash-set! h 'c 'd)
(hash-ref h 'a)
)