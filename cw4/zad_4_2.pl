liczba(0).
liczba(s(X)) :- liczba(X).

dodaj(0, Y, Y).
dodaj(s(X), Y, s(Z)) :- dodaj(X, Y, Z).

mnoz(0, _, 0).
mnoz(_, 0, 0).
mnoz(s(X), Y, Z) :- mnoz(X, Y, Z1), dodaj(Z1, Y, Z).

peano_to_decimal(0, 0).
peano_to_decimal(s(X), Z) :- peano_to_decimal(X, Z1), Z is Z1 +1.

decimal_to_peano(0, 0).
decimal_to_peano(X, P) :- X > 0, X1 is X - 1, decimal_to_peano(X1, P1), P = s(P1).
