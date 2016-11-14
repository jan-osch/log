przekatna(Lista, P) :- przekatna(Lista, 0, [], P).
przekatna([],_, Wynik, W) :-odwroc(Wynik, W).
przekatna([Head|Tail], Index, Wynik, P):- I1 is Index+1,
    wez_element(Head,Index,Element), przekatna(Tail, I1, [Element|Wynik], P).

wez_element([Head|_], 0, Head).
wez_element([_|Tail], X, Wynik) :- X1 is X-1, wez_element(Tail, X1, Wynik).

odwroc(X,P):-odwroc(X,P, []).
odwroc([],Z,Z).
odwroc([H|T],Z,Acc) :- odwroc(T,Z,[H|Acc]).
