%Male
male(tom).
male(bob).
male(jim).

%Female
female(pam).
female(liz).
female(pat).

%Parent
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,pat).
parent(pat,jim).

different(X,Y) :- X=Y,!,fail;true.

siblings(X,Y) :- parent(Z,X), parent(Z,Y), different(X,Y).

n_of_siblings(X,M) :- setof(N,siblings(X,N),L), list_length(L,M).

list_length([],0).
list_length([_|L],N) :- list_length(L,N1), N is N1 + 1.
