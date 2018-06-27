:- dynamic on/2,next_to/2,loadable/1.

on(a,floor).

next_to(a,b).
next_to(a,c).

loadable(b).
loadable(c).

cond_list([]).
cond_list([CL|CL1]) :- CL, cond_list(CL1).

del_list([]).
del_list([DL|DL1]) :- retract(DL), del_list(DL1).

add_list([]).
add_list([AL|AL1]) :- assert(AL), assert(AL1).

apply_operation(CL,DL,AL) :- cond_list(CL), del_list(DL), add_list(AL).

climb(X,Y) :- apply_operation([on(X,floor),next_to(X,Y),loadable(Y)],[on(X,floor),next_to(X,Y)],[on(X,Y)]).
