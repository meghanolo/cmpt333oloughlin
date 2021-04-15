pack([],[]).
pack([X|Xs],[Y|Ys]) :- move(X,Xs,Zs,Y), pack(Zs,Ys).

move(X,[],[],[X]).
move(X,[Y|Ys],[Y|Ys],[X]) :- X \= Y.
move(X,[X|Xs],Ys,[X|Zs]) :- move(X,Xs,Ys,Zs).