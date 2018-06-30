
my_length([], 1).
my_length([X | Xs], N) :- my_length(Xs, N1), N is N1 + 1.

nth_element([X|L],1,X).
nth_element([_|L],N,X) :- my_length(L,M), N =< M, N1 is N - 1, nth_element(L,N1,X).
nth_element([_|L],N,X) :- my_length(L,M),write('The length is less than N').
