count_letters([],0).
count_letters([X|X1],C) :- X = a, count_letters(X1,C1), C is C1 + 1.
count_letters([X|X1],C) :- X = b, count_letters(X1,C1), C is C1 + 1.
count_letters([_|X1],C) :- count_letters(X1,C).
