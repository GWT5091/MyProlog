number_of_evens([],0).
number_of_evens([X|X1],N) :- X mod 2 =:= 0,number_of_evens(X1,N1), N is N1 + 1.
number_of_evens([X|X1],N) :- X mod 2 =:= 1,number_of_evens(X1,N1), N is N1.
