both_occur(X) :- both_member(a,X), both_member(b,X).

both_member(N,N).
both_member(N,f(X)) :- both_member(N,X).
both_member(N,g(X,Y)) :- both_member(N,X).
both_member(N,g(X,Y)) :- both_member(N,Y).
