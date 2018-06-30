:- dynamic cond_list/1,del_list/1,add_list/1, object/1.

object(a).
object(b).
object(c).


cond_list([]).
cond_list([CL|CL1]) :- object(CL), cond_list(CL1).

del_list([]).
del_list([DL|DL1]) :- retract(object(DL)), del_list(DL1).

add_list([]).
add_list([AL|AL1]) :- assert(object(AL)), assert(AL1).

apply_operation(CL,DL,AL) :- cond_list(CL), del_list(DL), add_list(AL).

test :- apply_operation([a,b,c],[a,b],[d]).
