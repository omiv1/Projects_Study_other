posiada(piotr,auto).
posiada(marcin,auto).
posiada(piotr,auto(nissan,almera)).
posiada(marcin,auto(fiat,punto)).
maAuto(X) :- posiada(X,auto(_,_)).
