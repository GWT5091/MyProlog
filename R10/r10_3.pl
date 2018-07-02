even_odd([],[],[]).
even_odd([L|L1],[L|E1],O) :-  L mod 2 =:= 0, even_odd(L1,E1,O).
even_odd([L|L1],E,[L|O1]) :-  even_odd(L1,E,O1).
