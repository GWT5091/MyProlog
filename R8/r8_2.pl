:-dynamic male/1, female/1, parent/2.

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

del :- retract(male(pam)).
del :- retract(female(pam)).
del :- retract(parent(pam,X)).
del :- retract(parent(X,pam)).

del_all :- del, del_all.
del_all.
