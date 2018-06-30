
test_failures([(55,80),(60,60)]).

test1_failures([],[]).
test1_failures([X|L1],[X|L2]) :- failures(L1,L2).

failures([],0).
failures([(X,Y)|L1],N) :- X < 60, failures(L1,N1), N is N1 + 1.
failures([(X,Y)|L1],N) :- Y < 60, failures(L1,N1), N is N1 + 1.
failures([(X,Y)|L1],N) :- failures(L1,N1), N is N1 + 0.
