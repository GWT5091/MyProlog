are_edfes(a,[b,c]).
are_edfes(b,[a,c,d]).
are_edfes(c,[d]).
are_edfes(d,[]).

lengthq([],0).
lengthq([X|Y1], N) :- lengthq(Y1, N1), N is N1 + 1.

n_of_edges(N,K) :- are_edfes(N,L), lengthq(L,NUM), K is NUM.
