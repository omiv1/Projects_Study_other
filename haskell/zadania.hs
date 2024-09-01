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
	