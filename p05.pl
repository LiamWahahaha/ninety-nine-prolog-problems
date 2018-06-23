% Reverse a list

% reverse(L1,L2) :-
%    (list,list) (?,?)
%    L2 is the list obtained from L1 by reversing the order 
%    of the elements.

reverse(L1, L2) :-
    reverse(L1, [], L2).

reverse([], L, L).

reverse([X| Xs], BeforeAcc, AfterAcc):-
    reverse(Xs, [X|BeforeAcc], AfterAcc).

% e.g.
% reverse([1,2,3], X) => reverse([1,2,3], [], X)
% reverse([1|[2,3]], [], X) => reverse([2,3], [1|[]], X)
% reverse([2|[3]], [1|[]], X) => reverse([3], [2|[1|[]]], X)
% reverse([3], [2|[1|[]]], X) => reverse([], [3|[2|[1|[]]]], X)
% X = [3, 2, 1]
