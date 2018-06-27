member(X,[X|T]).
member(X,[Y|T]) :- member(X,T).

nth_element([X|L],1,X).
nth_element([_|L],N,X) :- N1 is N - 1, nth_element(L,N1,X).
