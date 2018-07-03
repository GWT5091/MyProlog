
exist_label(X, X) :- integer(X).
exist_label(X,t(X,Y,Z)) :- integer(X).
exist_label(X,t(X,Y)) :- integer(X).
exist_label(X, A) :- integer(A).
exist_label(X,t(A,Y,Z)) :- integer(A), exist_label(X,Y), exist_label(X,Z).
exist_label(X,t(A,Y)) :- integer(A), exist_label(X,Y).
