alphabet(a).
alphabet(b).

digit(0).
digit(1).


ocr_check(X,X) :- alphabet(X).
ocr_check(X,X) :- digit(X).
ocr_check(A,f(X)) :- ocr_check(A,X).
ocr_check(A,g(X,Y)) :- ocr_check(A,X),ocr_check(A,Y).
ocr_check(A,g(X,Y)) :- ocr_check(A,X).
ocr_check(A,g(X,Y)) :- ocr_check(A,Y).
