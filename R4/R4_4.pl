copy_list([],[]).
copy_list([X|X1],[X|Y1]) :- copy_list(X1,Y1).

mid([],Min,Max,[]).
mid([X|L1],Min,Max,[X|L2]) :- X > Min, X < Max, mid(L1,Min,Max,L2).
mid([X|L1],Min,Max,L2) :- X < Min, mid(L1,Min,Max,L2).
mid([X|L1],Min,Max,L2) :- X > Max, mid(L1,Min,Max,L2).
