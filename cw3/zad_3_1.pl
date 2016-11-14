wiekszy(X,Y,Z) :- X > Y, Z is X.
wiekszy(X,Y,Z) :- X =< Y, Z is Y.

modul(X,Y) :- X > 0, Y is X.
modul(X,Y) :- X =< 0, Y is -X.

suma(N,S) :- N =< 1, S is N.
suma(N,S) :- suma(N-1,S1), S is S1 + N.
