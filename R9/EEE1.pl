picnic1(Day) :- holiday(Day), sunny(Day).
picnic2(Day) :- holiday(Day), !, sunny(Day).
holiday(saturday).
holiday(sunday).
sunny(sunday).
