node(a).
node(b).

subset_label(T1,T2) :- subset_label1(a, c, T1,T2).

subset_label1(A,C,t(A,Y,Z),t(C,Y1,Z1)) :- node(X), subset_label1(A,C,Y,Y1),  subset_label1(A,C,Z,Z1).
subset_label1(A,C,t(X,Y,Z),t(X,Y1,Z1)) :- node(X), subset_label1(A,C,Y,Y1),  subset_label1(A,C,Z,Z1).

subset_label1(A,C,t(A,Y),t(C,Y1)) :- node(X), subset_label1(A,C,Y,Y1).
subset_label1(A,C,t(X,Y),t(X,Y1)) :- node(X), subset_label1(A,C,Y,Y1).

subset_label1(A,C,A,C) :- node(X).
subset_label1(A,C,X,X) :- node(X).
