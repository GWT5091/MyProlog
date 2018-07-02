drop2(L,N,L1) :- my_length(L,N1), N1 < N, write('Too short').
drop2(L,N,L1):- drop(L,N,L1).



my_length([], 0).
my_length([X | Xs], N) :- my_length(Xs, N1), N is N1 + 1.


drop([],0,[]).
drop([X|L],0,[X|L2]) :- drop(L,0,L2).
drop([X|L],N,L1) :- N1 is N - 1, drop(L,N1,L1).
