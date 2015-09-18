fib(1, 1) :- !.
fib(0, 0) :- !.
fib(N, Value) :-
  A is N - 1, fib(A, A1),
  B is N - 2, fib(B, B1),
  Value is A1 + B1,
    write(Value),
    write(", ").

/******************************
fib([0,1|X]) :-
    ffib(0,1,X).
ffib(A,B,X) :-
    freeze(X, (C is A+B, X=[C|Y], ffib(B,C,Y)) ).

i/p : fib(X), length(A,15), append(A,_,X), writeln(A).

******************************************************/
