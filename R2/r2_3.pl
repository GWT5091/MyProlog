ssum(1,0).

ssum(N,M) :- N1 is N-1, ssum(N1,M1), N2 is N1*(N1 +1), M is M1+N2.
