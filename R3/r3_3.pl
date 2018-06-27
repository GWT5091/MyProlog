copy_list([],[]).
copy_list([X|X1],[X|Y1]) :- copy_list(X1,Y1).

member(X,[X|T]).
member(X,[Y|T]) :- member(X ,T).

even_list([],[]).
even_list([X|X1],[X|Y]) :- X mod 2 =:= 0,even_list(X1,Y).
even_list([X|X1],Y) :- X mod 2 =:= 1,even_list(X1,Y).

remove_at(1, [X | Ls], Ls).
remove_at(N, [X | Ls], [X | Zs]) :- N > 0, N1 is N - 1, remove_at(N1, Ls, Zs).

amari(X) :- X mod 2 =:= 0.
