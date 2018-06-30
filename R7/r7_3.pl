
attendants([],[]).
attendants([(X,Y)|L1],[X|L2]) :- attendants(L1,L2).
