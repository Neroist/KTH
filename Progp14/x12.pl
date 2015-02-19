:- use_module(kattio).
main :-
	
	read_int(W),read_int(ANTAL),

	(W == end_of_file;
	go(ANTAL,W)

	 
	).


mkList(0,[]).
mkList(N,[H|T]):-
	N1 is N-1,
	read_int(H),
	mkList(N1,T).

	
go(N,W):-
	mkList(N, L),
	append([W], L, Q1),
	adding(Q1,Z),
	append(Q1,Z, Q),
	
	
	sort(Q,Wz),
	wrtlist(Wz),nl.

wrtlist([]).
wrtlist([H|T]):-
	write(H),write(' '),
	wrtlist(T).



adding(L,X):-adding(L,L,X).
adding([],_,[]).
adding([H|T],L,Ny):-
	checkAll(H,L,Z),
	append(Z,Y,Ny),

	adding(T,L,Y).



checkAll(X,L,Z):-checkAll(X,L,L,Z).
checkAll(_, [], _, []).
checkAll(X,[H|T], Comp, [Num|T2]):-
	Num is abs(X-H),
	\+memberchk(Num,Comp),
	Num >0,
	checkAll(X, T, [Num|Comp], T2),!.
checkAll(X, [_|T], Comp, L):-
	checkAll(X,T,Comp,L).
