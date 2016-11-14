sum(L, S).
sum([],0)
sum([S], S).
sum([Head|Tail], S) :- sum(Tail, S1), S is S1 + Head.


%używanie tail recursion
sumTail(L,S) :- sumTail(L, 0, S).
sumTail([], S, S).
sumTail([Head|Tail], A, S) :- sumTail(Tail, A+Head, S).

%zadanie 3:
% d ( a, nil, d(b, nil, nil))
%
%     a
%       \
%         b
%
% Drzewo oznaczamy jako d, dwa wierzchołki, jeden liść


%Zadanie 4
%Zobacz jak wyglada flatten
