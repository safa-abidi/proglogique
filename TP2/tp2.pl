personne(k,f,63,tunis).
personne(c,m,63,nabeul).
personne(d,f,60,nabeul).
personne(e,m,35,tunis).
personne(g,f,27,sousse).
personne(h,f,39,nabeul).
personne(i,m,40,nabeul).
personne(j,m,17,sousse).
personne(1,f,9,sousse).
personne(m,f,19,tunis).
personne(n,m,1,tunis).


individu(X):- personne(X,_,_,_).
masculin(X):- personne(X,m,_,_).
feminin(X):- personne(X,f,_,_).
est_ag�_de(X,Y):- personne(X,_,Y,_).
habite_�(X,Y):- personne(X,_,_,Y).
majeur(X):- personne(X,_,Y,_),( Y >= 18 ).
mineur(X) :- personne(X,_,Y,_), (Y < 18).
m�me_age(X,Y):- est_ag�_de(X,Z), est_ag�_de(Y,Z).
habite_la_m�me_ville(X,Y):- habite_�(X,Z), habite_�(Y,Z).
epoux_possible(X,Y) :- masculin(X),feminin(Y), majeur(X),majeur(Y),est_ag�_de(X,Z), est_ag�_de(Y,Q), Z - Q < 20 , Z - Q > -20.

travaille(k,enseignant,2000).
travaille(c,musician,5000).
travaille(d,chercheur,4000).
travaille(e,danceur,8500).
travaille(g,chanteur,7000).
travaille(h,maitre,1800).
travaille(i,enseignant,1000).
travaille(j,chercheur,10000).
travaille(l,magician,7000).
travaille(m,comedien,900).
travaille(n,developeeur,5000).

meme_profession(X,Y) :- travaille(X,Z,_), travaille(Y,Z,_).
gagne_plus(X,Y):- travaille(X,_,Z), travaille(Y,_,Q), Z > Q.
salaire_meme_ordre(X,Y) :- travaille(X,_,Z), travaille(Y,_,Q), ((Z - Q > 0, Z - Q =< 0.2*Q) ; (Z - Q < 0 , Q - Z =< 0.2*Z)),X \== Y .
