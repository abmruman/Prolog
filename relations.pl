/*
	@author: A B M RUMAN
*/

parent(bob,pam).
parent(bob,tom).
parent(lin,tom).
parent(pat,bob).
parent(ami,bob).
parent(jim,pat).

grand_parent(X,Z):-parent(X,Y),parent(Y,Z).

female(pam).
female(liz).
female(pat).
female(ami).
male(tom).
male(bob).
male(jim).

offsprint(X,Y):-parent(Y,X).
mother(X,Y):-parent(X,Y),female(Y).
father(X,Y):-parent(X,Y),male(Y).

sister(X,Y):-parent(X,Z),parent(Y,Z),female(Y).
brother(X,Y):-parent(X,Z),parent(X,Z),male(Y).
/*
children(pam,bob).
children(tom,bob).
children(tom,lin).
children(bob,pnt).
children(bob,pnt).
children(pnt,jim).
*/
