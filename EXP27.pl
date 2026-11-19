% Best First Search Algorithm

% Graph connections
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).

% Heuristic values
h(a, 6).
h(b, 4).
h(c, 3).
h(d, 5).
h(e, 2).
h(f, 1).
h(g, 0).

% Best First Search
best_first(Start, Goal) :-
    search([Start], Goal, [Start]).

search([Goal|_], Goal, Path) :-
    reverse(Path, Result),
    write('Path: '),
    write(Result).

search([Node|Rest], Goal, Path) :-
    findall(H-Child,
        (edge(Node, Child),
         \+ member(Child, Path),
         h(Child, H)),
        Children),
    keysort(Children, Sorted),
    extract_nodes(Sorted, Nodes),
    append(Nodes, Rest, NewOpen),
    search(NewOpen, Goal, Path).

extract_nodes([], []).
extract_nodes([_-Node|T], [Node|R]) :-
    extract_nodes(T, R).
