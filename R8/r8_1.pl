:- dynamic right/2,left/2.

right(apple,orange).
right(lemon,apple).

update :- retract(right(X,Y)), assert(left(Y,X)).

update_db :- update, update_db.
update_db.
