mul(0,_,0) :- !. % warunki graniczne
mul(1,X,X) :- !. % warunki graniczne
mul(X,1,X) :- !. % warunki graniczne
mul(_,0,0) :- !. % warunki graniczne
mul(X,Y,R) :- X>1,X1 is X-1, mul(X1,Y,R1),R is R1 + Y,!,\+(X=1;Y=1).
mul(X,Y,R) :- X<1,X1 is X+1, mul(X1,Y,R1),R is R1 - Y,!,\+(X=1;Y=1).



silnia(0,1) :- !.
silnia(X,R) :- X>=1,X1 is X-1,silnia(X1,R1),R is X*R1.


fib(0, 0) :- !.
fib(1, 1) :- !.
fib(X, R) :- X > 1, X1 is X - 1, X2 is X - 2,fib(X1, R1), fib(X2,R2),R is R1 + R2.

silniaBU(N,X) :- silniaBU(0,1,N,X).
silniaBU(N,_,N,X) :- !.
silniaBU(N1,X1,N,X) :- N2 is N1+1,X2 is X1+1,silniaBU(N2,X2,N,X).


fibBU(N,X) :- fibBU(0,0,1,N,X).
fibBU(N,X,_,N,X):-!.
fibBU(N1,X1,X2,N,X) :- N2 is N1+1, X3 is X1+X2,fibBU(N2,X2,X3,N,X).

zlota(X,W) :- X1 is X+1,W is fibBU(X,W)/fib(X1,W).
