n_of_passed([],0).
n_of_passed([(X,Y)|L],N) :- Y >= 60 ,n_of_passed(L,N1), N is N1 + 1.
n_of_passed([_|L],N) :- n_of_passed(L,N).
