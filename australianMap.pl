/*
    @author: A B M RUMAN
*/

color(red).
color(green).
color(blue).

neighbor(StateAColor, StateBColor):-
    color(StateAColor), color(StateBColor),
    StateAColor \= StateBColor.

australia(WA,NT,Q,NSW,V,SA,T):-
    neighbor(WA,NT),
    neighbor(WA,SA),
    neighbor(NT,SA),
    neighbor(NT,Q),
    neighbor(SA,Q),
    neighbor(SA,NSW),
    neighbor(SA,V),
    neighbor(Q,NSW),
    neighbor(NSW,V),
    neighbor(V,T).