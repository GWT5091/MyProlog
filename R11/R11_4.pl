suc(0).
suc(suc(X)) :- suc(X).

isExp(plus(X,Y)) :- isExp(X), suc(Y).
isExp(minus(X,Y)) :- isExp(X), suc(Y).
isExp(X) :- suc(X).
