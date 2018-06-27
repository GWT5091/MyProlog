divide_by_three([],[],[]).
divide_by_three([X|X1],[X|Y1],L3) :- X mod 3 =:= 0, divide_by_three(X1,Y1,L3).
divide_by_three([X|X1],Y1,[X|L3]) :- divide_by_three(X1,Y1,L3).
