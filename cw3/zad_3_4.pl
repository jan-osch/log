binom(N,K,X) :- N=:= K , X is 1.
binom(_,K,X) :- K=:= 0 , X is 1.
binom(N,K,X) :- K >= 1, N > K, binom(N-1, K-1, X1), binom(N-1, K, X2), X is X1 + X2.
