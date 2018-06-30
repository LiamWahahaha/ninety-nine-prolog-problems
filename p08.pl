% Eliminate consecutive duplicates of list elements.

% compress(L1,L2) :-
%    (list,list) (+,?)
%    the list L2 is obtained from the list L1 by
%    compressing repeated occurrences of elements into a single copy
%    of the element.


compress([], []).
compress([X], [X]).
compress([X, X|Xs], Zs):-
    compress([X|Xs], Zs).
compress([X, Y|Xs], [X|Zs]):-
    X \= Y,
    compress([Y|Xs], Zs).
