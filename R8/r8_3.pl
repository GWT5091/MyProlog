goods(riceball,new).
goods(lunchbox,new).
goods(sandwitch,new).
goods(milk,new).
goods(yogult,old).
goods(tea,old).

check([]).
check([X|Y]) :- goods(X,new), check(Y).
