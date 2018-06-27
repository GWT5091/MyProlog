insert_end([],A,[A]).
insert_end([X | L1],A,[X | L2]) :- insert_end(L1,A,L2).

connect_lists(L1,X,L2,L) :- insert_end(L1,X,S), append(S,L2,L).
