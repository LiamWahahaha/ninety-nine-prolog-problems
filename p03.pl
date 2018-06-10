% Find the K'th element of a list.
% The first element in the list is number 0.

% kth(X, L, K) :- X is the K'th element of a list
%   (element, list, integer) (?, ?, +)

kth(X, [X|_], 0).
kth(X, [_|L], K) :-
    K > 0,
    Z is K - 1,
    kth(X, L, Z).
