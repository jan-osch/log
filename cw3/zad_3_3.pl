collatz1(X) :- X =:=1, write(X), nl.
collatz1(X) :- mod(X,2) =:= 0, write(X), nl,  X1 is X//2, collatz1(X1).
collatz1(X) :- mod(X,2) =:= 1,  write(X), nl, X1 is 3 * X + 1, collatz1(X1).

collatz2(X,N) :- X =:=1, N is 1.
collatz2(X,N) :- mod(X,2) =:= 0, X1 is X//2, collatz2(X1, N1), N is N1+1.
collatz2(X,N) :- mod(X,2) =:= 1, X1 is 3 * X + 1, collatz2(X1, N1), N is N1+1.
