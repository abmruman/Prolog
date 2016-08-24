/*
	@author: A B M RUMAN
*/

cube:-
	read(X),calc(X).
calc(stop):-!.
calc(X):- C is X * X * X, write(C), cube.

evaluate(Expression, Answer) :- Answer is Expression.

/* Loop */
test:- repeat,
	write('Please enter a number'),
	read(X),
	(X=:=42).

/* Fabonacii Series */

go(N):- write(0),nl,
	write(1),nl,
	go(0,1,N).
go(_,_,0):-!.
go(A,B,C):-
	Sum is A+B,
	write(Sum),nl,
	NewC is C-1,
	go(B,Sum,NewC).
fib:- write('Input total nos'),
	read(N),
	go(N).
