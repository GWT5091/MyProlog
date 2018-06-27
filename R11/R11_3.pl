mean_value(L,MV) :- length1(L,N), mean(L,M), MV is M / N.

length1([],0).
length1([X|L],N):- length1(L,N1), N is N1 + 1.

mean([],0).
mean([X|L],M) :- mean(L,M1), M is M1 + X.


compare_value(E,M,R) :- mean_value(E,N1), mean_value(M,N2), N1 > N2, R = english.
compare_value(E,M,R) :- R = math.
