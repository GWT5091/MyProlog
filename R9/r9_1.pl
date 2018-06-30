male(tom).
male(bob).
male(jim).

female(liz).
female(ann).

gather_men(Men) :- setof(N,male(N),Men).
gather_women(Women) :- setof(N,female(N),Women).
number_of_men(N) :- gather_men(Men), list_length(Men,N).

list_length([],0).
list_length([_|L],N) :- list_length(L,N1), N is N1 + 1.

all_members(L) :- gather_men(Men), gather_women(Women), append(Men,Women,L).
