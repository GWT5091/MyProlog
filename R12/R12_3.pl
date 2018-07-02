
total_score([],[]).
total_score([ (S,E1,M1) | L ],[(S,TOTAL) | L2]) :- total_score(L,L2), TOTAL is E1 + M1.
