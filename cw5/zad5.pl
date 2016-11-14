%Append
lacz_listy([], B, B).
lacz_listy([Head|Tail], B, [Head|C]) :- lacz_listy(Tail, B, C).


%Ostatni
ostatni_element([B], B).
ostatni_element([_|Tail], B) :- ostatni_element(Tail, B).


%Prefiks
prefiks([], _).
prefiks([X| TailA], [X| TailB]) :- prefiks(TailA, TailB).


%Podlista
podlista([A], [A|_]).
podlista([CHAR|REST],[_|TAIL]) :- podlista([CHAR|REST], TAIL).
podlista([C|REST],[C|TAIL]) :- prefiks(REST, TAIL).


%Sortowanie
sortuj([X], [X]).
sortuj([Head|Tail], Result) :- sortuj(Tail, Sorted), wstaw(Head, Sorted, Result).

wstaw(A, [], [A]).
wstaw(A, [Head|Tail], [Head|C]) :- A @> Head, wstaw(A, Tail, C).
wstaw(A, [Head|Tail], [A,Head|Tail]) :- A @=< Head.


%Podlista2
podlista2([], _).
podlista2([First|Rest], [First|Tail]) :- podlista2(Rest,Tail).
podlista2([First|Rest], [_|Tail]) :- podlista2([First|Rest], Tail).


%Usuwanie elementów
usun_element([A], _, [A]).
usun_element([X|Tail], X, Tail).
usun_element([Head|Tail], X, [Head|Rest]) :- usun_element(Tail, X, Rest).


%Usuwanie duplikatów
wstaw_bez_duplikatow([A], [], [A]).
wstaw_bez_duplikatow(Head, [Head|Tail], [Head|Tail]).
wstaw_bez_duplikatow(A, [Head|Tail], [Head|C]) :- A @> Head,
    wstaw_bez_duplikatow(A, Tail, C).
wstaw_bez_duplikatow(A, [Head|Tail], [A,Head|Tail]) :- A @< Head.

usun_duplikaty([A], [A]).
usun_duplikaty([Head|Tail], Result) :- usun_duplikaty(Tail, Dedup), wstaw_bez_duplikatow(Head, Dedup, Result).


%Permutacje
wstaw_pomiedzy(A, [], [A]).
wstaw_pomiedzy(A, [Head| Tail], [A, Head | Tail]).
wstaw_pomiedzy(A, [Head| Tail], [Head|Rest]) :- wstaw_pomiedzy(A, Tail, Rest).

permutacja([A], [A]).
permutacja([Head|Tail], Result) :- permutacja(Tail, Rest), wstaw_pomiedzy(Head, Rest, Result).
