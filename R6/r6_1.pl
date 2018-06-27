
isTm(X) :- alphabet(X).
isTm(f(X)) :- isTm(X).
alphabet(a).
alphabet(b).


my_copy_term(X,X) :- alphabet(X).
my_copy_term(f(X),f(Y)) :- my_copy_term(X,Y).


