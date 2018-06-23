% Find out whether a list is a palindrome.

% is_palindrome(L) :-
%     (list) (?)
%     L is a palindrome.

reverse(L1, L2) :- reverse(L1, L2, []).
reverse([], L, L).
reverse([X|Xs], L, Acc) :-
    reverse(Xs, L, [X|Acc]).

is_palindrome(L):-
    reverse(L, L).
