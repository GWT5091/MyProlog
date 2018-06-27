%alphabet
alphabet(a).
alphabet(b).

%digit
digit(0).
digit(1).

%isTM
isTm(X)      :-  alphabet(X).
isTm(X)      :-  digit(X).
isTm(f(X))   :-  isTm(X).
isTm(g(X,Y)) :-  isTm(X), isTm(Y).


subst_atob(a,Y):- Y = b.
subst_atob(X,X) :- alphabet(X).
subst_atob(X,X) :- digit(X).
subst_atob(f(X),f(Y))   :-  subst_atob(X,Y).
subst_atob(g(X1,Y1),g(X2,Y2)) :-  subst_atob(X1,X2), subst_atob(Y1,Y2).
