%data

node(s,10).
node(a,2).
node(b,3).
node(c,5).
node(d,4).
node(e,2).
node(g,0).

node_list(L) :- setof(N/M,node(N,M),L).

list_length([],0).
list_length([_|L],N) :- list_length(L,N1), N is N1 + 1.

number_list(N) :- node_list(L), list_length(L,N).

sum_list(N) :-  node_list(L), adder(L,N).

adder([],0).
adder([X/Y|L],N) :- adder(L,N1), N is N1 + Y.

a_value(Average) :- sum_list(N), number_list(M), Average is N / M.
