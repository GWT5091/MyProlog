
classify([],[],[],[]).
classify([(X,Y)|L1],[(X,Y)|L2],L3,L4) :- Y >= 60, classify(L1,L2,L3,L4).
classify([(X,Y)|L1],L2,[(X,Y)|L3],L4) :- Y < 60, Y >= 20 ,classify(L1,L2,L3,L4).
classify([(X,Y)|L1],L2,L3,[(X,Y)|L4]) :- Y < 20, classify(L1,L2,L3,L4).
