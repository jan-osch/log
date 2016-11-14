% Zadanie A:
krawedz(a,b).
krawedz(b,c).
krawedz(b,d).
krawedz(c,e).
krawedz(c,f).
krawedz(d,f).
krawedz(f,e).

% Zadanie B:
sciezka(X,Y):-krawedz(X,Y).
sciezka(X,Y):-krawedz(R,Y), sciezka(X,R).

% I: 	?-sciezka(b,f) - true, true
% II: 	?-sciezka(b,Z) - c,d,e,f,f,e,e
% III: 	?-sciezka(X,d) - b,a

% Zadanie C:
% I: 	?-sciezka(a,d), sciezka(d,f) - true
% II: 	?-sciezka(X,Y), sciezka(Y,Z), sciezka(Z,f)  - a,b,c i a,b,d
% III:	?-sciezka(X,Y), sciezka(Y,X) - false

% Zadanie D:
sciezka_dl(X,Y,N):- N=1, krawedz(X,Y).
sciezka_dl(X,Y,N):- N>1, N1 is N -1,
    krawedz(X,Z), sciezka_dl(Z,Y,N1).

% I: 	?-sciezka_dl(X,f,4) - false
% II: 	?-sciezka_dl(a,X,3) - e,f,f
% III: 	?-sciezka_dl(X,Y,3) - a,e ; a,f ; a,f ; b,e ; b,e
% IV: 	?-sciezka_dl(a,e,N) - zwraca błąd Arguments are not sufficiently instantiated
% Do wykonania tego zapytania potrzebujemy wartości N, gdyż jest ona sprawdzana w pierwszej kolejnośći

% Zadanie E:
dl_sciezki(X,X,N) :- N is 0.
dl_sciezki(X,Y,N) :- krawedz(X,Y), N is 1.
dl_sciezki(X,Y,N) :- krawedz(X,Z), dl_sciezki(Z,Y,N1), N is N1 + 1.
