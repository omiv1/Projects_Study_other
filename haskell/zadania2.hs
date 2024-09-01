funkcja = 5

abs2 x = if x < 0 then -x else x

sqrt2 x = if x < 0 then error "pierwiastek z liczby ujemnej" else sqrt x

delta a b c = b^2 - 4*(a*c)

pdelta a b c = sqrt2(delta a b c) 

delta_w a b c = b_kw - ac
	where b_kw = b^2
	      ac = 4*a*c
		  
pdelta_w a b c = let d = delta_w a b c in
	if d < 0 then error "delta mniejsza 0" 
	else if d == 0.0 then 0
		 else sqrt(d)
		 
miejsca a b c = let 
				d_kw = pdelta_w a b c
				x1 = (-b-d_kw)/(2*a)
				x2 = (-b+d_kw)/(2*a)
				in	if a == 0 then error "funkcja liniowa" else [x1,x2]
	
	
sign1 x = if x < 0 then (-1) else if x == 0 then 0 else 1

sign2 x | x >  0 = 1
		| x == 0 = 0
		| x <  0 = (-1)
			
myComp x y	| x > y = GT
			| x == y = EQ
			| x < y = LT
			
mnozenie x y	| x == 0 || y == 0 = 0
				| x == 1 = y
				| y == 1 = x
				| y < 0 && x > 0 = y + mnozenie y (x-1)
				| y < 0 && x < 0 = (-y) + mnozenie (-y) ((-x)-1)
				| otherwise = x + mnozenie x (y-1)
				
silnia x	| x < 0 = error "ujemna liczba"
			| x < 2 = 1
			| otherwise = x * silnia (x-1)
			
fib x 	|x < 0 = error "ujemna liczba"
		| x < 3 = 1
		| otherwise = fib (x-2) + fib (x-1)
		
silnia2 x = silnia3 x 1 1
silnia3 x n w = if x==0 then w else silnia3 (x-1) (n+1) (w*n)

fib2 x 	| (x-2) < 3 = 1
		| otherwise = fib3 (x-2) 1 1
fib3 x w1 w2 = if x ==0 then w2 else fib3 (x-1) (w2) (w2+w1)
									
									