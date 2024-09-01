lubi(jan, tatry).
lubi(jan, beskidy).
lubi(jerzy, beskidy).
lubi(imie1, tatry).
lubi(jerzy, bieszczady).
lubi(jozef, bieszczady).
lubi(karol, beskidy).
lubi(imie2, tatry).
lubi(justyna, swietokrzyskie).
bratniadusza(X, Y) :- lubi(X, S),lubi(Y, S),X \= Y.

