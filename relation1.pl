/*
	@author: A B M RUMAN
*/

parent(bob,pam). /* bob's parent is pam */
parent(bob,tom).
parent(liz,tom).
parent(ann,bob).
parent(pat,bob).
parent(jim,pat).

grandparent(X,Z):-
    parent(X,Y),parent(Y,Z).  /* X's grandparent is Z */

female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

offspring(X,Y):-parent(Y,X).  /* X's offsprint is Y */
mother(X,Y):- parent(X,Y),female(Y). /* X's mother is Y */
sister(Y,X):- 
    parent(Y,Z), parent(X,Z), female(X), Y \= X.
sameParent(X,Y):- parent(X,Z),parent(Y,Z), X\=Y.
happy(X):-parent(Y,X).
hastwochildren(X):-parent(Y,X),sister(Y,Z).
grandchild(X,Z):-parent(Y,X),parent(Z,Y).
aunt(X,Y):-parent(X,Z),sister(Z,Y).