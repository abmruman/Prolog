/*
	@author: A B M RUMAN
*/

% Palindrome Series.

pal(0):-
	write('Please enter a number greater than 0'), nl,
	read(X), pal(X).

pal(N):-
    X is 1,
    writeln(1),
    X \= N,
    N2 is N-1,
    pal(X,N2).
pal(X,N):-
    X\=N,
    A is 11*X,
    writeln(A),
    X2 is X+1,
    pal(X2,N).

pal(X,X):-
    A is 11*X,
    writeln(A).

pal:-
    writeln('Enter the value of N.'),
    read(N),
    pal(N).
