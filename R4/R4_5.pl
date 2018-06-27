prefix(L1,L1).
prefix([X|X1],[X|Y1]):- prefix(X1,Y1).
prefix([],[Y|Y1]):- prefix(X,Y1).
