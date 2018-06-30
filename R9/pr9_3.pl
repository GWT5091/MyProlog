%start
start(s).

%goal
goal(g).

%edge(N -> M).
edge(s,a).
edge(s,b).
edge(a,c).
edge(a,d).
edge(b,g).
edge(b,e).
edge(c,g).
edge(d,g).
edge(e,g).


conected(X,Y) :- edge(X,Y).
conected(X,Y) :- edge(X,Z), conected(Z,Y).

exist_path :- start(X), goal(Y), conected(X,Y).
