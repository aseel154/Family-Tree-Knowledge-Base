% Family Tree Knowledge Base

% Gender facts
male(ahmed).
male(ali).
male(omar).
male(khalid).

female(sara).
female(nora).

% Parent facts
parent(ahmed, ali).
parent(ahmed, sara).
parent(ali, omar).
parent(ali, nora).
parent(sara, khalid).

% Father rule
father(X, Y) :-
    male(X),
    parent(X, Y).

% Mother rule
mother(X, Y) :-
    female(X),
    parent(X, Y).

% Sister rule
sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Brother rule
brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.