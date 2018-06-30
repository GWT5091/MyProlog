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

conected1(X,Y,[Y]) :- edge(X,Y).
conected1(X,Y,[L|L1]) :- edge(X,Z), conected1(Z,Y,L1), L = Z.

dfs([L|L1]) :- start(X), goal(Y), conected1(X,Y,L1), L = X.

test_case(L) :- setof(N,dfs(N),L).
