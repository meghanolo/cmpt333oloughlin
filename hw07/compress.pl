compress([],[]).
compress([X],[X]).
compress([X,X|Xs],Ys) :- compress([X|Xs],Ys).
compress([X,Y|Zs],[X|Ys]) :-  X \= Y, compress([Y|Zs], Ys).
