
isTm(X) :- alphabet(X).
isTm(f(X)) :- isTm(X).
alphabet(a).
alphabet(b).


subst_atoc(a,Y) :- Y = c.
subst_atoc(X,X) :- alphabet(X).
subst_atoc(f(X),f(Y)) :- subst_atoc(X,Y).
