%data base

alphabet(p).
alphabet(q).
alphabet(r).


isFormula(X) :- alphabet(X).
isFormula(neg(X)) :- isFormula(X).
isFormula(and(X,Y)) :- isFormula(X), isFormula(Y).
isFormula(or(X,Y)) :- isFormula(X), isFormula(Y).
isFormula(imp(X,Y)) :- isFormula(X), isFormula(Y).
