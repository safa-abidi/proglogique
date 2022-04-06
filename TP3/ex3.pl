lire(X) :- write('donner votre entier'), nl , read(X), nl.

max(0,0,0).
max(A,B,Max) :- A>B -> Max is A; Max is B.

som(Somme,Maximum,N) :- N=\=0 -> M is N-1, lire(Z), S is Somme+Z, max(Z,Maximum,Max),som(S,Max,M);write('la somme est = '), write(Somme), nl, write('le maximum est = '), write(Maximum).

resultat :- lire(N), som(0,0,N).
