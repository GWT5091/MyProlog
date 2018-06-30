%:- dynamic fruit/1.

fruit(banana).
fruit(apple).
fruit(grape).

contained([]).
contained([X|Y]) :- fruit(X), contained(Y).
