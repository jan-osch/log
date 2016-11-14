splaszcz(L, P) :- splaszcz(L, [], P).
splaszcz([Head|Tail], L, S3) :-  splaszcz(Head, L, S1), splaszcz(Tail, S1, S3).
splaszcz(X,L,P) :- not_lista(X), dodaj_liste(L, X, P).
splaszcz([],L,L).

dodaj_liste(L, [], L).
dodaj_liste([Head|Tail], X, [Head|Rest]):- dodaj_liste(Tail, X, Rest).
dodaj_liste([], X, [X]).

lista([_]).
lista([_|T]) :- lista(T).
lista([]).

not_lista(X):- \+lista(X).
