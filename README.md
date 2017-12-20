## Racket Compiler by Nathan Li


This codebase compiles a subset of Racket and Scheme to a runnable binary via several intermediate passes. The first pass processes top level Racket by adding implicit begin forms explicitly, quoting all datums, desugaring defines nested in such begin forms to a letrec\*, and desugaring quasiquote and unquote. The second pass further desugars the input, taking an input language with a number of forms including exceptions, dynamic-ll/cc, and first-class primitives, and yielding terms in a small core language including only a let form, the lambda-calculus, conditionals, set!, call/cc, and explicit primitive-operation forms. The third pass removes set! from the language by boxing all mutable local variables (using make-vector, vector-set!, and vector-ref prims). The fourth pass makes all names unique to a single binding point, thus removing shadowing. The fifth pass converts the input to administrative normal form, giving an explicit order of evaluation to evaluation of any subexpressions by administratively let-binding them to a temporary name and flattening let forms with multiple right-hand sides. The sixth pass converts the input to continuation-passing style, effectively removing call/cc. The seventh pass removes all lambda abstractions by replacing them with new make-closure and env-ref forms, lifts remaining atomic expressions other than variable references to their own let bindings, and makes all function calls non-variadic. The final pass converts the language into an LLVM IR that can be combined with a runtime written in C to produce a binary.  

### Primative Operators Supported

(**null?** v) → boolean?

  >v : anything
  >
  >Returns #t if v is null and #f otherwise.

(**number?** v) → boolean?

  >v : anything
  >
  >Returns #t if v is a number and #f otherwise.

(**promise?** v) → boolean?

  >v : anything
  >
  >Returns #t if v is a promise and #f otherwise.


(**car** p) → anything

>p : pair?
>
>Returns the first element of the pair p.

(**cdr** p) → anything

>p : pair?
>
>Returns the second element of the pair p.

(**cons** a b) → pair?

  >a : anything
  >
  >b : anything
  >
  >Returns a newly allocated pair whose first element is a and second element is b.

(**append** lst ...) → list?
  
(**append** lst ... v) → anything

  >lst : list?
  >
  >v : anything
  >
  >When given all list arguments, the result is a list that contains all of the elements of the given lists in order. The last argument is used directly in the tail of the result.
The last argument need not be a list, in which case the result is an “improper list.”

(**set!** id expr) -> void

>id : symbol?
>
>expr : anything
>
>Evaluates expr and installs the result into the location for id, which must be bound as a local variable or defined as a top-level variable or module-level variable.


(**\+** z ...) → number?

  >z : number?
  >
>Returns the sum of the zs, adding pairwise from left to right. If no arguments are provided, the result is 0. 

(**\-** z) → number?
  
(**\-** z w ...+) → number?
  >z : number?
  >
  >w : number?
  >
  >When no w's are supplied, returns (- 0 z). Otherwise, returns the subtraction of the w's from z working pairwise from left to right.

(**\*** z ...) → number?

  >z : number?
  >
>Returns the product of the zs, multiplying pairwise from left to right. If no arguments are provided, the result is 1. Multiplying any number by exact 0 produces exact 0.

(**/** z) → number?
  
(**/** z w ...+) → number?
  >z : number?
  >
  >w : number?
  >
>When no ws are supplied, returns (/ 1 z). Otherwise, returns the division of z by the ws working pairwise from left to right.

(**=** z w ...+) → boolean?

  >z : number?
  >
  >w : number?
  >
  >Returns #t if all of the arguments are numerically equal, #f otherwise. 

(**<** x y ...+) → boolean?

  >x : real?
  >
  >y : real?
  >
>Returns #t if the arguments in the given order are strictly increasing, #f otherwise.

(**<=** x y ...+) → boolean?

  >x : real?
  >
  >y : real?
  >
  >Returns #t if the arguments in the given order are non-decreasing, #f otherwise.

(**>** x y ...+) → boolean?

  >x : real?
  >
  >y : real?
  >
  >Returns #t if the arguments in the given order are strictly decreasing, #f otherwise.

(**>=** x y ...+) → boolean?

  >x : real?
  >
  >y : real?
  >
  >Returns #t if the arguments in the given order are non-increasing, #f otherwise.


### Run-Time Errors

(Notes: All student written tests are in the release subfolder of the tests folder. The tests.rkt file was rewritten so that any tests with a .fail extension pass if they throw an error, and fail otherwise. As of submission time, all included tests were passing.)

1. Divide by Zero
 
 > The division prim within header.cpp now contains an additional check insuring that the given divisor is a non-zero value. If a zero divisor is provided, the resulting binary will throw a runtime error. Two tests were written to test this error, dividezero-1.fail and dividezero-2.fail. The first test tries to directly divide the 4 integer datum by the 0 integer datum, while the second test first binds the two integers to variables. The binaries produced in both tests correctly throw runtime errors. 
 
2. Memory-use cap (256MB) is exceeded

> The global variable "allocated" is added to header.cpp that tracks the amount of memory used. Every place memory is allocated, the "allocated" variable is incremented and a check is done to ensure that it is not above the memory cap (in bytes). If "allocated" grows to be larger than the memory cap, a runtime error is thrown. Two tests were written to test this error, memcap-fib.fail and memcap-infinite.fail. The first test tries to generate the 25th fibonacci number, while the second test creates an infinite loop. The binaries produced in both tests correctly throw runtime errors. 

3. Use of not-yet-initialized letrec or letrec\* variable

> A check is added to the alpha renaming pass to ensure that, if there is no corresponding variable binding in the environment when that variable is first used, the program throws a runtime error. Two tests were written to test this error, unbound-1.fail and unbound-2.fail. The first test attempts to use an uninitialized letrec variable, while the second test attempts to use an unintialized letrec\* variable. The binaries produced in both tests correctly throw runtime errors. 

4. Out of bounds vector access

> A check is added to vector-ref and vector-set! to ensure that any attempts to access an out of bounds vector slot throws a runtime error. Because the length is already stored in the first slot of the vector struture, no additional modifications need to be made to the vectors themselves. Two tests were written to test this error, vector-1.fail and vector-2.fail. The first test attempts to access an out of bounds vector slot with vector-ref, while the second test attempts to access an out of bounds vector slot with vector-set!. The binaries produced in both tests correctly throw runtime errors. 

5. Integer Overflow

> When converting a Racket number to an LLVM integer, the compiler inserts a run-time error if the Racket number is greater than the maximum LLVM integer size or less than the minimum LLVM integer size. Additional checks are also added to the addition, subtraction, multiplication, and division prims within header.cpp. For instance, when adding two numbers A and B, it will throw an overflow error if A is greater than INT_MAX - B or if A is less than INT_MIN + B. Similar checks are used for the other operators. Four tests were written to test this error, overflow-1.fail, overflow-2.fail, overflow-3.fail, and overflow-4.fail. The first test attempts to intialilze an LLVM integer larger than INT_MAX, the second test attempts to multiply two numbers whose product is greater than INT_MAX, the third test attempts to divide INT_MIN by -1, and the fourth test attempts to  add two numbers whose sum is greater than INT_MAX. The binaries produced in all cases correctly throw runtime errors. 

### Additional Feature: Mutable Hash Table

I used Troy D. Hanson's uthash, which is a C implementation for hashes, to implement hashes within the  compiler. The compiler supports setting key value pairs in the hash table using hash-set! and retrieving values given a key using hash-ref. Three tests were written to test the hashes. The first tests correct creation of a hash, correct insertion of key value pairs, correct overwriting of key value pairs, and correct retrieval of values given a key. The second tests if a proper run-time error is emitted when hash-set! or hash-ref is passed a non-hash value as the first parameter. The third tests if a proper run-time error is emitted when hash-ref is used on a non-existent key. The binaries in all cases exhibited expected behaviour.

(**make-table**) → hash?
> Initializes and returns a new mutable hash table. 

(**hash-set!** hash key v) → void?
  >hash : hash?
  >
  >key : anything
  >
  >v : anything
  >
>Maps key to v in th existing hash, overwriting any existing mapping for key. 

(**hash-ref** hash key) → anything

  >hash : hash?
  >
  >key : anything
>
>Returns the value for key in the hash table.

### Boehm GC

Unfortunately, I did not have time to integrate the Boehm GC. 

### Academic Integrity Pledge

I pledge on my honor that I have not given or received any unauthorized assistance on this assignment.

Nathan Li

### Resources Used:

 * [uthash](https://troydhanson.github.io/uthash/userguide.html) for the C hash table implementation

>Copyright (c) 2005-2016, Troy D. Hanson  http://troydhanson.github.com/uthash/
All rights reserved.

>Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

>    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.

>THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
