rem(X,Y,X) :- X<Y.

rem(X,Y,Z) :- X1 is X-Y, rem(X1,Y,Z).
