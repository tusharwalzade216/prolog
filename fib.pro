% find fib of number

myfib(L,N) :- 	write('1,'),
		S1 is 0,S2 is 1,
		fibo(S1,S2,L,N).

fibo(S1,S2,L,N1) :- (L==0),nl.

fibo(S1,S2,L,N1) :-     X is S1+S2,
			write(X),write(','),L1 is L-1, 
			X1 is S2,
			X2 is X,
			fibo(X1,X2,L1,N2).	

% cmd is as myfib(5,N).
