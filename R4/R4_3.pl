copy_list([],[]).
copy_list([X|X1],[X|Y1]) :- copy_list(X1,Y1).

insert_end([],A,[A]).
insert_end([X | L1],A,[X | L2]) :- insert_end(L1,A,L2).


