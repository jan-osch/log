delta(A,B,C,N):- N is B * B - 4 * A * C .

rownanie(A,B,C,X):- delta(A,B,C,D), D =:= 0,  X is (-B / 2*A).
rownanie(A,B,C,X):- delta(A,B,C,D), D > 0,  X is (-B - sqrt(D)) / 2*A.
rownanie(A,B,C,X):- delta(A,B,C,D), D > 0,  X is (-B + sqrt(D)) / 2*A.
