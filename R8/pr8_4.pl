fruit(banana).
fruit(apple).
veg(carrot).
veg(spinach).
can(spam).

contained2([]).
contained2([fruit(X)|Y]) :- fruit(X), contained2(Y).
contained2([veg(X)|Y]) :- veg(X), contained2(Y).
contained2([can(X)|Y]) :- can(X), contained2(Y).

%contained2([]).
%contained2([X|Y]) :- X, contained2(Y).
