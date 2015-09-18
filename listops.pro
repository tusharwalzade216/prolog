%member(3, [1,3,2,4,5,6,7,8,9,0]).

%reverse([1, 2, 3], [3, 2, 1]).

%length([3, 3, 4, 5, 7],L1).

%nth(8, [a,b,c,d,e,f,g,h,i,j], R).
%nth(N, [a,b,c,d,e,f,g,h,i,j], R).

conc([], L, L).
conc(L, [], L).
conc([H|L1], L2, [H|L3]) :- conc(L1, L2, L3).

%conc([1, 2, 3], [4, 5], R).

del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]) :-
	del(X,Tail,Tail1).

%del(3, [1, 2, 3, 4, 5, 6], R).

ins(Element, List, Position, Result) :-
    PrefixLength is Position - 1,
    length(Prefix, PrefixLength),
    append(Prefix, Suffix, List),
    append(Prefix, [Element], Temp),
    append(Temp, Suffix, Result).

%ins(5, [1, 2, 3, 4, 6, 7, 8], 5, R).
