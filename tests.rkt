#lang racket

;; Testing apparatus for assignment 5

(require "top-level.rkt")
(require "desugar.rkt")
(require "cps.rkt")
(require "closure-convert.rkt")
(require "utils.rkt")

(define (all-test exp) 
  (define val (eval-top-level exp))
  (define test (eval-llvm (proc->llvm (closure-convert (cps-convert (anf-convert (alphatize (assignment-convert (simplify-ir (desugar (top-level exp)))))))))))
  (if (equal? val test)
      #t
      (begin
        (display (format "Test-All: two different values (~a and ~a) before and after closure conversion.\n"
                             val test))
        #f)))

(define (fail-test exp)
        (define test (eval-llvm (proc->llvm (closure-convert (cps-convert (anf-convert (alphatize (assignment-convert (simplify-ir (desugar (top-level exp)))))))))))
        (define errors (list 'error "Runtime Error: Unbound Variable"))
      (if (member test errors)
          #t
          (begin
            (display "Error expected but none thrown.\n")
            (display test)
            (newline)
            #f)))
  


(define ((make-test path) exp ext)
  (match ext
    ["scm"
     (lambda ()
      (define t0 (all-test exp))
      t0)]
    ["fail"
     (lambda ()
       (define t0 (fail-test exp))
       t0)]
    )
  )

(define (tests-list dir)
  (map
   (lambda (path)
     (string->path
      (string-append "tests/" dir "/"
                     (path->string path))))
   (filter (lambda (path)
             (define p (path->string path))
             (member (last (string-split p ".")) '("scm" "fail")))
           (directory-list (string-append "tests/" dir "/")))))


(define ((path->test type) p)
  (define filename (last (string-split (path->string p) "/")))
  `(,(string-append (last (string-split (string-join (drop-right (string-split (path->string p) ".") 1) ".") "/")))
    ,type
    ,((make-test p)
      (with-input-from-file p read-begin #:mode 'text)
      (last (string-split (path->string p) ".")))))

(define tests
  `(,@(map (path->test 'public) (tests-list "public"))
    ,@(map (path->test 'release) (tests-list "release"))
    ,@(map (path->test 'secret) (tests-list "secret"))))

(define (run-test/internal is-repl . args)
  ;; Run all tests, a specific test, or print the available tests
  (match args
         [(list "all")
          (define correct-count
            (foldl (lambda (testcase count)
                     (match testcase
                            [(list test-name _ exec)
                             (define exec-result
                               (with-handlers ([exn:fail? identity])
                                              (exec)))
                             (if (eq? exec-result #t)
                                 (begin
                                   ;; (display "Test ")
                                   ;; (display test-name)
                                   ;; (display " passed.")
                                   ;; (newline)
                                   (+ count 1))
                                 (begin
                                   (display "Test ")
                                   (display test-name)
                                   (display " failed!")
                                   (newline)
                                   count))]))
                   0
                   tests))
          (display "Score on available tests (may not include release tests or private tests): ")
          (display (/ (round (/ (* 10000 correct-count) (length tests))) 100.0))
          (display "%")
          (newline)]

         [(list "mk-test-props")
          (define groupped-tests
            ;; key: group (symbol)
            ;; value: reversed list of testcases
            (foldl
             (lambda (testcase h)
               (match testcase
                      [(list _ grp _)
                       (define cur-group
                         (hash-ref h grp '()))
                       (hash-set h grp (cons testcase cur-group))]))
             (hash)
             tests))
          (for-each
           displayln
           '("build.language=c"
             "build.make.file=Makefile"
             "test.exec=timeout -s KILL 55s /usr/local/bin/racket ./tests.rkt &"))
          (for-each
           (lambda (kv)
             (match kv
                    [(cons grp ts)
                     (define testnames
                       (reverse (map car ts)))
                     (printf
                      "test.cases.~a=~a~n"
                      grp
                      (string-join
                       testnames
                       ","))]))
           (hash->list
            groupped-tests))]

         [(list test-name)
          #:when (assoc test-name tests)
          (match (assoc test-name tests)
                 [(list _ _ exec)
                  (define exec-result
                    (with-handlers ([exn:fail? identity])
                                   (exec)))
                  (define passed (eq? exec-result #t))
                  (displayln (if passed "Test passed!" "Test failed!"))
                  (unless is-repl
                          (exit (if (eq? exec-result #t) 0 1)))])]
         [else
          (display "Available tests: ")
          (newline)
          (display
           (string-join
            (map car tests)
            ", "))
          (newline)]))

(define run-test
  (curry run-test/internal #t))

(apply
 run-test/internal
 (cons
  #f
    (vector->list (current-command-line-arguments))))



