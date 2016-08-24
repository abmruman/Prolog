/*
	@author: A B M RUMAN
*/

% Excercise 1: analyse_list([dog, cat, horse, cow]).

analyse_list([Head|Tail]):-
    write('This is the head of your list: '),
    write(Head),nl,
    write('This is the tail of your list: '),
    write(Tail).
analyse_list([]):-
    write('This is an empty list.').
analyse_list:-false.


% Excercise 2: membership(horse,[dog, cat, horse, cow]).

membership(Elem, [Head|Tail]):-
    Elem==Head;
    membership(Elem, Tail).


% Excercise 3: remove_duplicates([a, b, a, c, d, d], List).

remove_duplicates([], []).
remove_duplicates([H|T], [H|T1]) :-
    remove_duplicates(H, T, T2),
    remove_duplicates(T2, T1).
remove_duplicates(_, [], []).
remove_duplicates(X, [X|T], T1) :- remove_duplicates(X, T, T1).
remove_duplicates(X, [H|T], [H|T1]) :-
    X \= H,
    remove_duplicates(X, T, T1).


% Excercise 4: reverse_list([tiger, lion, elephant, monkey], List).

reverse_list([X],[X]).
reverse_list([H|T],D):-
    reverse_list(T,R), append(R, [H], D).
/*
append([], List, List).
append([Head|Tail], List, [Head|Rest]) :-
    append(Tail, List, Rest).
*/
