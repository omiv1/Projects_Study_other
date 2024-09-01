suma(X,Y,Z) :- X =< 6,Z is X+Y.


warunek(X) :- X =< 6.
suma2(X,Y,Z) :- warunek(X),Z is X+Y.

%suma2(X,Y,Z) :- X < 6, Z is X+Y.
%suma2(X,Y,Z) :- X >= 6, Z is Y.

suma3(X,Y,Z) :- (X < 6, Z is X+Y),!;(X >=6,Z is Y).

