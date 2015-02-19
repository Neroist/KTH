:- use_module(kattio).
main :-
	repeat,
	read_string(X),
	(X == end_of_file ;
	 solve(X),
	 fail
	).
solve(X) :-
	counter(X,LOWER,UPPER,UNDER,ELSE),
	length(X,L),
	UL is UNDER/L,
	LL is LOWER/L,
	UPL is UPPER/L,
	EL is ELSE/L,
	write(UL),nl,
	write(LL),nl,
	write(UPL),nl,
	write(EL).





counter([], 0, 0, 0, 0).
counter([H|T], LOWER, UPPER, UNDER, ELSE):-
	H =< 122,
	H >= 97,
	counter(T,L1,UPPER,UNDER,ELSE),
	LOWER is 1 + L1,!.

counter([H|T], LOWER, UPPER, UNDER, ELSE):-
	H =< 90,
	H >= 65,
	counter(T,LOWER,U1,UNDER,ELSE),
	UPPER is 1 + U1,!.

counter([H|T], LOWER, UPPER, UNDER, ELSE):-
	H = 95,
	counter(T,LOWER,UPPER,UN1,ELSE),
	UNDER is 1 + UN1,!.

counter([_|T], LOWER, UPPER, UNDER, ELSE):-
	counter(T,LOWER,UPPER,UNDER,E1),
	ELSE is 1 + E1,!.





