
male(john).
male(peter).
male(mark).
male(james).
male(tony).

female(mary).
female(susan).
female(linda).
female(anne).
female(grace).

% parent(X, Y) means X is a parent of Y
parent(john, peter).
parent(mary, peter).

parent(john, linda).
parent(mary, linda).

parent(peter, mark).
parent(susan, mark).

parent(linda, anne).
parent(james, anne).

parent(peter, tony).
parent(mary, tony).

% =========================================================
% RULES SECTION
% These define relationships using logical inference
% =========================================================

% Father: X is father of Y if X is male AND parent of Y
father(X, Y) :-
    male(X),
    parent(X, Y).

% Mother: X is mother of Y if X is female AND parent of Y
mother(X, Y) :-
    female(X),
    parent(X, Y).

% Child: X is child of Y if Y is parent of X
child(X, Y) :-
    parent(Y, X).

% Grandparent: X is grandparent of Y if X is parent of Z and Z is parent of Y
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Grandchild: inverse of grandparent
grandchild(X, Y) :-
    grandparent(Y, X).

% Sibling: X and Y share the same parent but are not the same person
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Cousin: parents of X and Y are siblings
cousin(X, Y) :-
    parent(A, X),
    parent(B, Y),
    sibling(A, B),
    X \= Y.

% Uncle: X is uncle of Y if X is male and sibling of Y’s parent
uncle(X, Y) :-
    male(X),
    sibling(X, Z),
    parent(Z, Y).

% Aunt: X is aunt of Y if X is female and sibling of Y’s parent
aunt(X, Y) :-
    female(X),
    sibling(X, Z),
    parent(Z, Y).

% =========================================================
% TEST QUERIES (RUN THESE IN PROLOG)
% =========================================================

/*
?- father(john, peter).
   Checks if John is father of Peter

?- mother(mary, peter).
   Checks if Mary is mother of Peter

?- grandparent(john, mark).
   Finds grandparents of Mark

?- sibling(peter, linda).
   Checks if Peter and Linda are siblings

?- cousin(mark, anne).
   Finds cousins of Mark

?- uncle(peter, mark).
   Finds uncle of Mark

?- aunt(linda, mark).
   Finds aunt of Mark
*/