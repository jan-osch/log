
lancuch(a).
lancuch(b).

lancuch(a(X)):-lancuch(X).
lancuch(b(X)):-lancuch(X).

dl_lancucha(a, N) :- N is 1.
dl_lancucha(b, N) :- N is 1.
dl_lancucha(a(X), N) :- dl_lancucha(X,N1), N is N1 +1.
dl_lancucha(b(X), N) :- dl_lancucha(X,N1), N is N1 +1.

nty_el_lancucha(a, 1, a).
nty_el_lancucha(a(_Y), 1, a).
nty_el_lancucha(b, 1, b).
nty_el_lancucha(b(_Y), 1, b).
nty_el_lancucha(a(Y), N, X):- N1 is N -1, nty_el_lancucha(Y, N1,X).
nty_el_lancucha(b(Y), N, X):- N1 is N -1, nty_el_lancucha(Y, N1,X).

podobne(a,a, true).
podobne(a,b, false).
podobne(b,a, false).
podobne(b,b, true).
podobne(a(_X), a(_Y), true).
podobne(b(_X), b(_Y), true).
podobne(b(X), a(Y), P) :- podobne(X, Y, P).
podobne(a(X), b(Y), P) :- podobne(X, Y, P).
