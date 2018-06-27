%Male
male(tom).
male(bob).
male(jim).

%Female
female(pam).
female(liz).
female(pat).

%Parent
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,pat).
parent(pat,jim).

%father
father(X,Y) :- parent(X,Y) , male(X).

%ok
ok :- father(tom,bob).

%(4)
grandfather(X,Y) :- father(X,Z) , parent(Z,Y).
%Another
%grandfather(X,Y) :- parent(X,Z), male(X), parent(Z,Y).

%(5)
%ancestor(X,Y) :- parent(X,Y) , ancestor(Z,Y).

ancestor(X,Y) :- parent(X,Y). % �ċN���Ƃ߂邽�߂̒�`
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).

%(6)
/*
(1)
parent(X,Y)����male(X)�Ȃ��father(X,Y)
(2)
�ォ����s�����ߒ����������
*/
%�ǋL�ꏊ
age(tom,80).
age(bob,58).
age(jim,2).
age(pam,76).
age(liz,55).
age(pat,27).

senior(X,Y) :- age(X,A),age(Y,B),A>B.
