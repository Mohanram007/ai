connected(a, b).
connected(a, c).
connected(b, d).
connected(b, e).
connected(c, f).
connected(d, g).

goal_state(g).

bfs(Start, Path) :-
    bfs([[Start]], Path).

bfs([[Goal | Rest] | _], [Goal | Rest]) :- goal_state(Goal).
bfs([[Curr | Path] | Queue], Result) :-
    findall([Next, Curr | Path],
            (connected(Curr, Next), dif(Next, Curr)),
            NextPaths),
    append(Queue, NextPaths, NewQueue),
    bfs(NewQueue, Result).
