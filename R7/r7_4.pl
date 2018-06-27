
senior([],[]).
senior([(X,Y)|L1],[X|L2]) :- Y >= 60 ,senior(L1,L2).
senior([(X,Y)|L1],L2) :- senior(L1,L2).
