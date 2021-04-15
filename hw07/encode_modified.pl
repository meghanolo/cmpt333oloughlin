pack([],[]).
pack([X|Xs],[Y|Ys]) :- move(X,Xs,Zs,Y), pack(Zs,Ys).

move(X,[],[],[X]).
move(X,[Y|Ys],[Y|Ys],[X]) :- X \= Y.
move(X,[X|Xs],Ys,[X|Zs]) :- move(X,Xs,Ys,Zs).

encode(L1,L2) :- pack(L1,L), transform(L,L2).

transform([],[]).
transform([[X|Xs]|Zs],[[N,X]|Ys]) :- length([X|Xs],N), transform(Zs,Ys).

encode_modified(L1,L2) :- encode(L1,L), ones(L,L2).

ones([],[]).
ones([[1,X]|Zs],[X|Ys]) :- ones(Zs,Ys).
ones([[N,X]|Zs],[[N,X]|Ys]) :- N > 1, ones(Zs,Ys).