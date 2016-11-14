silnia(N,S) :- silnia(N, 1, S).
silnia(0,S,S).
silnia(N,A,S):- N>0, A1 is A * N, N1 is N-1, silnia(N1, A1, S).


fib(0,1).
fib(N,F) :- N>0, N1 is N -1, fib(N1,0,1,F).
fib(0,_,Min1,Min1).
fib(N, Min2,Min1,F):- N>0, N1 is N -1, New is Min2 + Min1, fib(N1, Min1,New, F).
