suma(wektor(X,Y,Z), wektor(X1, Y1, Z1), wektor(X2, Y2, Z2)) :-
    X2 is X + X1, Y2 is Y + Y1, Z2 is Z + Z1.

iloczyn_sk(wektor(X,Y,Z), wektor(X1, Y1, Z1), W) :-
    W is  X * X1 + Y * Y1 +  Z * Z1.
