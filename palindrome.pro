palindrome([]).
palindrome([X]).
palindrome([X|L]):-
        append(L2,[X],L),
        palindrome(L2).
