% Find the number of elements of a list.

% number_of(X, L):- X is the number of elements of a list L

number_of(0,[]).
number_of(X, [_|L]):-
    number_of(Z, L),
    X is Z + 1.
