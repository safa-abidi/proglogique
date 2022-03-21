lire(X) :- write('donner un entier '), nl, read(X), nl, write('votre entier est '),write(X),nl,
nl.
calcul_carre(X,Y):- Y is X * X.
ecrire_resultat(X,Y) :- write('le carré de '), write(X), write(' est '),write(Y), nl,nl.
aller :- lire(X), calcul_carre(X,Y), ecrire_resultat(X,Y).

carre :- write('donner un entier'), nl , read(X), nl, write('votre entier est '), write(X), nl,Y is X * X,  write('le carre est = '), write(Y).

carre_boucle :- write('donner un entier'), nl, read(X),(X =\= 0 -> write('votre carre est '), Y is X*X, write(Y),nl,carre_boucle;write('cet entier est null'),nl).

factorielle(0, 1).
factorielle(X,Y) :-
     X > 0 ,
     N is X-1,
     factorielle(N,Z),
     Y is X*Z.

fact :- write('donner un entier'), nl , read(X), nl, write('votre entier est '), write(X), nl,factorielle(X,Y),  write('la factorielle est = '), write(Y).

