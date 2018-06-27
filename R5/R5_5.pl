%Copy_From R5_3
partition([],X,[],[]).
partition([Y|L1],X,[Y|L],S) :- Y >= X, partition(L1,X,L,S).
partition([Y|L1],X,L,[Y|S]) :-  partition(L1,X,L,S).

%Copy_From R5_4
insert_end([],A,[A]).
insert_end([X | L1],A,[X | L2]) :- insert_end(L1,A,L2).

connect_lists(L1,X,L2,L) :- insert_end(L1,X,S), append(S,L2,L).

qsort([],[]).
qsort([X|L1],L2) :- partition(L1,X,Big,Small), qsort(Big,C1), qsort(Small,C2), connect_lists(C2,X,C1,L2).
