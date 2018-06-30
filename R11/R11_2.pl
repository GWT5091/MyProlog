div3or5([],0).
div3or5([X|L],N) :- X mod 3 =:= 0, div3or5(L,N1), N is N1 + 1.
div3or5([X|L],N) :- X mod 5 =:= 0, div3or5(L,N1), N is N1 + 1.
div3or5([X|L],N) :- div3or5(L,N).
