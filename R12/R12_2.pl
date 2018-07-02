average(L, EA, MA) :- my_length(L,N),english(L,E), math(L,M), EA is E / N, MA is M / N.

english([], 0).
english([(_,E,_)|L], M) :- english(L,M1) , M is M1 +E.

math([], 0).
math([(_,_,E)|L], M) :- math(L,M1) , M is M1 +E.

my_length([], 0).
my_length([X | Xs], N) :- my_length(Xs, N1), N is N1 + 1.
