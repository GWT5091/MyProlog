%start
start(s,10).

%goal
goal(g,0).

%edge(N -> M).
edge(s,a,2).
edge(s,b,3).
edge(a,c,5).
edge(a,d,4).
edge(b,g,0).
edge(b,e,2).
edge(c,g,0).
edge(d,g,0).
edge(e,g,0).

different(X,Y) :- X=Y,!,fail;true.
siblings(X,Y) :- edge(X,Y,A), edge(X,Z,B), different(Y,Z), A<B.
siblings(X,Z) :- edge(X,Y,A), edge(X,Z,B), different(Y,Z), A>B.

conected2(X,Y,[Y]) :- edge(X,Y,0).
conected2(X,Y,[L|L1]) :- siblings(X,Z), conected2(Z,Y,L1), L = Z.

hc([L|L1]) :- start(X,A), goal(Y,B), conected2(X,Y,L1), L = X.


%test_case(L) :- setof(N,dfs(N),L).



