are_edfes(a,[b,c]).
are_edfes(b,[a,c,d]).
are_edfes(c,[d]).
are_edfes(d,[]).

lengthq([],0).
lengthq([X|Y1], N) :- lengthq(Y1, N1), N is N1 + 1.

n_of_edges(N,K) :- are_edfes(N,L), lengthq(L,NUM), K is NUM.

n_of_all_edges([],0).
n_of_all_edges([X|L],E) :- n_of_all_edges(L,E1),  n_of_edges(X,N), E is E1 + N.
