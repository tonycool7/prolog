man('Adam').
man('Cain').
man('Abel').
man('Michael').
man('Muhammed').
man('Albert').
man('Ernest').
man('Hannibal').
man('Alexander').
man('Philip').
 
woman('Eve').
woman('Madonna').
woman('Maria').
woman('Alisa').
woman('Mary').
woman('Diana').
woman('Sarah').
woman('Barbara').
woman('Rose').
woman('Alla').
woman('Christina').
woman('Mariana').
 
parent('Adam','Cain').
parent('Adam','Abel').
parent('Adam','Sarah').
parent('Muhammed','Mary').
parent('Muhammed','Michael').
parent('Cain','Alica').
parent('Cain','Diana').
parent('Cain','Madonna').
parent('Michael','Barbara').
parent('Michael','Rose').
parent('Michael','Philip').
parent('Philip','Christina').
parent('Hannibal','Alexander').
parent('Alexander','Ernest').
parent('Alexander','Albert').
parent('Albert','Marianna').
parent('Eve','Cain').
parent('Eve','Abel').
parent('Eve','Sarah').
parent('Sarah','Mary').
parent('Sarah','Michael').
parent('Maria','Alisa').
parent('Maria','Diana').
parent('Maria','Madonna').
parent('Madonna','Barbara').
parent('Madonna','Rose').
parent('Madonna','Philip').
parent('Alla','Christina').
parent('Diana','Alexander').
parent('Barbara','Ernest').
parent('Barbara','Albert').
parent('Christina','Mariana').


brother(X, Y):-
	 man(X), man(Y), woman(F), parent(F, X), parent(F, Y).

sister_in_law(Sister, Husband):-
	 woman(Sister), woman(Y), woman(F), parent(F, Sister), parent(F, Y), parent(Husband, W), parent(Y, W), Y \= Sister.

/* Alisa,Diana and Michael, Rose and Alexander*/
/*F - Maria, Sister - Madonna, Husband - Michael, Y - Alisa or Diana, */