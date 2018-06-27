partition([],X,[],[]).
partition([Y|L1],X,[Y|L],S) :- Y >= X, partition(L1,X,L,S).
partition([Y|L1],X,L,[Y|S]) :-  partition(L1,X,L,S).
