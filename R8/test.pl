
cond_list(CL) :- .

del_list([DL|DL1]) :- retract(DL).

add_list([AL|AL1]) :- assert(AL).

apply_operation(CL,DL,AL) :- cond_list(CL), del_list(DL), add_list(AL).


