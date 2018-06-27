
del_duplication([],[]).
del_duplication([X|L1],L2) :- member(X,L1) ,del_duplication(L1,L2).
del_duplication([X|L1],[X|L2]) :- del_duplication(L1,L2).
