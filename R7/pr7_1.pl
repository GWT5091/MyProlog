

%has_duplication([]).
has_duplication([X|L]):- member(X,L).
has_duplication([X|L]):- has_duplication(L).
