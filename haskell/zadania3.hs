iloczyn x = foldr (*) 1 x;

duza x = elem x ['A'..'Z'];

usun_duze x = filter (>'A') x;

trojkat b1 b2 b3 = [ (a,b,c) | a <- b1, b <- b2, c <- b3, (a*a)+(b*b)==(c*c)]

silnia x = foldr (*) 1 [1..x];
silnia_lista = map (*) 1 (filter (even) [1..20]);