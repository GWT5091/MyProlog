edge(a,b,8).
edge(b,c,10).
edge(b,d,5).
edge(c,e,7).
edge(d,e,2).
edge(f,g,16).

dist2(X,Y,N) :- edge(X,Y,M) , N is M.
dist2(X,Y,N) :- edge(X,Z,M) , dist2(Z,Y,N1), N is N1 + M.
