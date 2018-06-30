first([Xs | Ys], Xs).
rest([Xs | Ys], Ys).

%double_num([ X | Y ],[ X | Y]).
copy_list([],[]).
copy_list([X|X1],[X|Y1]) :- copy_list(X1,Y1).

double_num([],[]).
double_num([X|X1],[Y|Y1]) :- Y is X*2 ,double_num(X1,Y1).

