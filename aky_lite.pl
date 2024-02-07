high(ruby,1).
high(c_sharp,1).
high(python,1).
high(c_plu_plus,1).
high(f_sharp,1).
high(prolog,1).
high(c,1).
high(asm,0).
high(js,1).
high(new, 0).
high(n0_c_sharp,1).

decl(ruby,0).
decl(c_sharp,0).
decl(python,0).
decl(c_plu_plus,0).
decl(f_sharp,1).
decl(prolog,1).
decl(c,0).
decl(asm,0).
decl(js,1).
decl(new, 1).
decl(n0_c_sharp,0).

interpret(ruby,1).
interpret(python,1).
interpret(f_sharp,1).
interpret(prolog,1).
interpret(c_sharp,0).
interpret(c_plu_plus,0).
interpret(c,0).
interpret(asm,0).
interpret(js,1).
interpret(new, 0).
interpret(n0_c_sharp,0).

oop(ruby,3).
oop(c_sharp,3).
oop(python,2).
oop(c_plu_plus,2).
oop(f_sharp,1).
oop(prolog,1).
oop(c,0).
oop(asm,0).
oop(js,2).
oop(new, 0).
oop(n0_c_sharp,3).

cross(ruby,1).
cross(python,1).
cross(c_plu_plus,1).
cross(prolog,1).
cross(c,1).
cross(asm,1).
cross(c_sharp,0).
cross(f_sharp,0).
cross(js, 1).
cross(new, 1).
cross(n0_c_sharp,0).

visual(c_sharp,3).
visual(ruby,2).
visual(python,2).
visual(c_plu_plus,2).
visual(f_sharp,2).
visual(prolog,1).
visual(c,0).
visual(asm,0).
visual(js,2).
visual(new, 2).
visual(n0_c_sharp,3).

mobile(c_sharp,0).
mobile(ruby,0).
mobile(python,0).
mobile(c_plu_plus,0).
mobile(f_sharp,0).
mobile(prolog,0).
mobile(c,0).
mobile(asm,0).
mobile(js,1).
mobile(new, 1).
mobile(n0_c_sharp,0).

game(ruby, 0).
game(c_plu_plus, 1).
game(c,0).
game(js,1).
game(python,1).
game(prolog,0).
game(f_sharp,0).
game(c_sharp,1).
game(asm,0).
game(n0_c_sharp,0).


science(ruby,1).
science(c_plu_plus,1).
science(c,1).
science(js,0).
science(prolog,0).
science(python,1).
science(asm,0).
science(c_sharp,0).
science(f_sharp,0).
science(n0_c_sharp,1).



question1(X1):-	write("Is your language high level?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X1).

question2(X2):-	write("Is your language declarative?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X2).

question3(X3):-	write("Is your language interpret?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X3).

question4(X4):-	write("Does your language support OOP?"),nl,
				write("3. It is OOP itself"),nl,
				write("2. yes"),nl,
				write("1. yes, but very hard"),nl,
				write("0. NO"),nl,
				read(X4).

question5(X5):-	write("Is your language crossplatformic?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X5).

question6(X6):-	write("Does your language support visual interface for user?"),nl,
				write("3. It is visual itself"),nl,
				write("2. yes"),nl,
				write("1. yes, but very hard"),nl,
				write("0. NO"),nl,
				read(X6).

question7(X7):-	write("Is your language for mobile phones?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X7).

question8(X8):-	write("Is it often used to create games and graphics applications?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X8).

question9(X9):-	write("Is it often used in the field of scientific computing and engineering?"),nl,
				write("1. Yes"),nl,
				write("0. NO"),nl,
				read(X9).


pr:-	question1(X1),question2(X2),question3(X3),question4(X4),
		question5(X5),question6(X6),question7(X7),question8(X8),question9(X9),
		high(X,X1),decl(X,X2),interpret(X,X3),oop(X,X4),
		cross(X,X5),visual(X,X6),mobile(X,X7),game(X,X8), science(X,X9),
		write(X).
