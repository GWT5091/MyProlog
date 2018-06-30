ace(A) :-E =  "s(", F = ")", A = EF.
bce(A) :- E = 's(', F = ')', A is E + F.

convert(0,0).
convert(1,s(0)).
convert(N,P) :- N1 is N-1, convert(N1,P1), P = s(P1).
