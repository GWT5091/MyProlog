dist([],[],0).
dist([X|X1],[Y|Y1],D) :- X > 0, Y > 0, dist(X1,Y1,D1), N is (X - Y)*(X - Y), D is D1 + N.
dist([X|X1],[Y|Y1],D) :- dist(X1,Y1,D).
