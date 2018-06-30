sum_list([],0).
sum_list([X|X1],N) :-sum_list(X1,N1), N is N1+X.
