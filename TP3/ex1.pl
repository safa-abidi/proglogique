adjacent(a,b).
adjacent(a,d).
adjacent(d,e).
adjacent(e,b).
adjacent(c,a).
adjacent(c,b).
adjacent(c,d).
adjacent(c,e).

color(a,rouge,coloriage1).
color(e,rouge,coloriage1).
color(b,bleu,coloriage1).
color(d,bleu,coloriage1).
color(c,vert,coloriage1).

color(a,rouge,coloriage2).
color(d,rouge,coloriage2).
color(b,bleu,coloriage2).
color(e,bleu,coloriage2).
color(c,vert,coloriage2).

conflit(X,Y,Coloriage) :- color(X,Z,Coloriage),color(Y,Z,Coloriage),adjacent(X,Y).
conflit(Coloriage) :- conflit(_,_,Coloriage).
