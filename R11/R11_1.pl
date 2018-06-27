drop(L,0,L).
drop([X|L],N,L1) :- N1 is N - 1, drop(L,N1,L1).
