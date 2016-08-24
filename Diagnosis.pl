/*
	@author: A B M RUMAN
*/

% Diagnosis System.

go:-
    writeln('What is the name of Patient?'),
    read(Patient),nl,
    hypo(Patient, Disease),
    write(Patient), write(' Probably has '), writeln(Disease), again.

go:-
    writeln('Sorry I am unable to diagnose the Disease.'), again.

hypo(Patient,flu):-
    sym(Patient,fever),
    sym(Patient,cough).

hypo(Patient,headche):-
    sym(Patient,bodypain).

sym(Patient,fever):-
    write('Does '),write(Patient),writeln(' has fever (y/n)?'),
    res(R),
    R='y'.

sym(Patient,cough):-
    write('Does '),write(Patient),writeln(' has cough (y/n)?'),
    res(R),
    R='y'.

sym(Patient,bodypain):-
    write('Does '),write(Patient),writeln(' has bodypain (y/n)?'),
    res(R),
    R='y'.
res(R):-
    read(R),nl.

again:-
    writeln('Do you want to continue? (y/n)'),
    read(Ans),
    Ans = 'y',
    go.
