%Term ::= Alphabet | f(Term)
%Alphabet ::= a | b

isTm(X) :- alphabet(X).
isTm(f(X)) :- isTm(X).
alphabet(a).
alphabet(b).

%ppt

test1 :- isTm(f(a)).
test2 :- isTm(f(f(b))).
test3 :- isTm(c).
