alphabet(a).
alphabet(b).

digit(0).
digit(1).

rewrite_func(X,X1) :- alphabet(X), X1 = X.
rewrite_func(X,X1) :- digit(X), X1 = X.
rewrite_func(f(X),f(X1)) :- rewrite_func(X,X1).
rewrite_func(g(X,Y), h(X1,Y1)) :- rewrite_func(X,X1), rewrite_func(Y,Y1).
