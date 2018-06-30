list_length([],0).
list_length([X|X1],N) :-list_length(X1,N1), N is N1+1.
