% Automaton A01712074

move(a, b, ë).
move(b, c, a).
move(c, z, r).
move(a, d, e).
move(d, e, c).
move(e, f, h).
move(f, h, o).
move(h, z, r).
move(f, g, u).
move(g, i, i).
move(i, z, r).
move(d, j, d).
move(j, k, a).
move(k, l, i).
move(l, z, n).
move(j, m, h).
move(m, n, e).
move(n, z, l).

accepting_state(z).

go_over_automaton(ListToCheck):-
    automatonCheck(ListToCheck, a).

automatonCheck([], InitialState):-
    accepting_state(InitialState).

automatonCheck([Symbol | RestofList], InitialState) :-
    move(InitialState, NextState, Symbol),
    automatonCheck(RestofList, NextState).

% True test

ëar:-
    write('ëar'), nl,
    write('Expected value: true'), nl,
    go_over_automaton([ë, a, r]).

echor:-
    write('echor'), nl,
    write('Expected value: true'), nl, 
    go_over_automaton([e, c, h, o, r]).

echuir:-
    write('echuir'), nl,
    write('Expected value: true'), nl,
    go_over_automaton([e, c, h, u, i, r]).  

edain:-
    write('edain'), nl,
    write('Expected value: true'), nl,
    go_over_automaton([e, d, a, i, n]).

edhel:-
    write('edhel'), nl,
    write('Expected value: true'), nl,
    go_over_automaton([e, d, h, e, l]).

% False tests

automaton:-
    write('automaton'), nl,
    write('Expected value: false'), nl,
    go_over_automaton([a, u, t, o, m, a, t, o, n]).

echol:-
    write('echol'), nl,
    write('Expected value: false'), nl,
    go_over_automaton([e, c, h, o, l]).


eee:-
    write('eee'), nl,
    write('Expected value: false'), nl,
    go_over_automaton([e, e, e]).

random:-
    write('random'), nl,
    write('Expected value: false'), nl,
    go_over_automaton([r, a, n, d, o, m]).

ear:-
    write('ear'), nl,
    write('Expected value: false'), nl,
    go_over_automaton([e, a, r]).

