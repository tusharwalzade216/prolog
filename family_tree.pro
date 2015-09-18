parent(raj,shrikant).

parent(bindumadhav,bal).

parent(udhhav,bal).

parent(aditya,udhhav).
 
parent(bal,keshav).

parent(raj,kunda).

parent(bal,rajnikant).

parent(shrikant,rajnikant).

parent(supriya,bal).

%

% More facts

%

 
male(raj).

male(shrikant).

male(bindumadhav).

male(bal).

male(aditya).

male(udhhav).

male(keshav).

male(rajnikant).

female(kunda).

female(supriya).

 

%

% associations

%

 

father(X,Y) :- parent(X,Y), male(X).

 

mother(X,Y) :- parent(X,Y), female(X).

 

sibling(X,Y) :- parent(X,Z), parent(Y,Z),X\=Y.

cousin(X,Y):-parent(X,A),parent(Y,B),sibling(A,B),male(A),male(B),X\=Y.

sister(X,Y) :- sibling(X,Y),female(Y), X\=Y.

uncle(X,Y):- parent(X,Z),sibling(Z,Y),male(Y),Z\=Y.

aunt(X,Y):- parent(X,Z),sibling(Z,Y),female(Y),Z\=Y.

grandparents(X,Y) :- parent(X,Z), parent(Z,Y).

grandfather(X,Y) :-parent(X,Z),parent(Z,Y), male(Y).

grandmother(X,Y) :-parent(X,Z),parent(Z,Y), female(Y).

greatgrandparents(X,G) :- parent(X,Z), parent(Z,Y),parent(Y,G).

greatgrandfather(X,G) :- parent(X,Z), parent(Z,Y),father(Y,G).

greatgrandmother(X,G) :- parent(X,Z), parent(Z,Y), mother(Y,G).
