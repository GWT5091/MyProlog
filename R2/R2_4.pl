male(tom).
male(bob).
male(jim).

female(pam).
female(liz).
female(pat).

parent(pat,jim).
parent(bob,pat).
parent(tom,liz).
parent(tom,bob).

different(X,Y) :- X=Y,!,fail;true.
niece(X,Y) :- parent(Z,X), parent(A,Z), parent(A,Y), different(Z,Y), female(X).
