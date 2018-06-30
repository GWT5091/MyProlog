exp(N,0,X) :- X is 1.
exp(N,M,X) :- M1 is M - 1, exp(N,M1,X1), X is X1 * N.
