n_elements( [X|L] , 0 ,L).
n_elements([Y | Ls], N ,[Y | Lx]) :- N > 0, N1 is N - 1, n_elements( Ls, N1 ,Lx).
    