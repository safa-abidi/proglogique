homme( jean) .
homme(alain).
femme( lucie) .
femme( nelly) .
femme(martine).
parent( jean, lucie) .
parent( nelly, lucie) .
parent( lucie, alain) .
parent(alain, martine).

ancetre( X,Y) :- parent( X, Y).
%on lit : ancetre(X,Y) si parent(X,Y)
ancetre(X,Y) :-parent(X,Z), ancetre(Z,Y).
%on lit : ancetre(X,Y) s’il y a un Z tel que parent(X,Z) et ancetre(Z,Y)

pere(X,Y) :- parent(X,Y),homme(X).
pere(X):-pere(X,_).

mere(X,Y):-parent(X,Y),femme(X).
mere(X):- mere(X,_).

enfant(X,Y):-parent(Y,X).
fils(X,Y):-enfant(X,Y),homme(X).
fille(X,Y):-enfant(X,Y),femme(X).
grand_parent(X,Y):-parent(X,Z),parent(Z,Y).
