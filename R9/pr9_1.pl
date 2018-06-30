male(tom).
male(bob).
male(jim).

female(liz).
female(ann).

gather_men(Men) :- setof(N,male(N),Men).
number_of_men(N) :- gather_men(Men), list_length(Men,N).

list_length([],0).
list_length([_|L],N) :- list_length(L,N1), N is N1 + 1.

