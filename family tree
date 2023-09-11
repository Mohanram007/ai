female(pam).
female(liz).
female(pat).
female(ann).

male(jim).
male(bob).
male(tom).
male(peter).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
parent(bob,peter).
parent(peter,jim).

mother(X,Y):- parent(X,Y), female(X).
father(X,Y):- parent(X,Y), male(X).

% Define sister relationship
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), X \== Y.

% Query for all sisters of "pat"
?- sister(X, pat).
