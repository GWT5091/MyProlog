sum([],0).
sum([Y|L],X) :- Y < 11, sum(L,X1), X is X1 + Y.
sum([Y|L],X) :-  sum(L,X1), X is X1.
