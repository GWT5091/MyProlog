male(tom).
male(bob).
male(jim).

female(liz).
female(ann).

%female(X) :- not(male(X)).

gather_men(Men) :- setof(N,male(N),Men).
