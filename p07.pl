my_append([], L, L).
my_append([X|Xs], L, [X|Ys]):-
    my_append(Xs, L, Ys).

my_flatten(X, [X]):- \+ is_list(X).
my_flatten([], []).
my_flatten([X|Xs], L):-
    my_flatten(X, Y), my_flatten(Xs, Ys), append(Y, Ys, L).
