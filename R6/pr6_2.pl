
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

%test
test4 :- isTm(f(a)).
test5 :- isTm(g(0,f(b))).
test6 :- isTm(f(c)).
test7 :- isTm(g(a)).
