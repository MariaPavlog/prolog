%max of 3 numbers
%max/4
%max(+X,+Y,+U,-Z)
max3(X,Y,U,X):-X>Y,X>U,!.
max3(_,Y,U,Y):-Y>U,!.
max3(_,_,U,U).

%factorial of a number using upward recursion
%fact_up/2
%fact_up(?N,?X)
fact_up(0,1):-!.
fact_up(N,X):-N1 is N-1,fact_up(N1,X1),X is N*X1.

%factorial of a number using downward recursion
%fact_down/2
%fact_down(?N,?X)
fact_down(N,X):-fact2(0,1,N,X).
fact2(N,Y,N,Y):-!.
fact2(N,_,N,_):-!,fail.
fact2(I,Y,N,X):-I1 is I+1, Y1 is Y*I1, fact2(I1,Y1,N,X).


%the sum of the digits of the number, recursion upwards
%sum_cifr_up/2
%sum_cifr_up(+X,?C)
sum_cifr_up(0,0):-!.
sum_cifr_up(X,SummCifr):-X1 is X // 10, Ost is X mod 10,
	sum_cifr_up(X1, SummCifr1), SummCifr is SummCifr1 + Ost.

%the sum of the digits of the number, recursion downwards
%sum_cifr_down/2
%sum_cifr_down(+X,?C)
sum_cifr_down(N,X):- sum_cifr_down(N,0,X).
sum_cifr_down(0,X,X):-!.
sum_cifr_down(N,CurX,X):-N1 is N // 10, Ost is N mod 10,
	NewX is CurX + Ost, sum_cifr_down(N1, NewX, X).

%a number free of squares
%free_of_sq/1
%free_of_sq(+X)
free_of_sq(1).
free_of_sq(N):- free_of_sq(N,2).
free_of_sq(N,N).
free_of_sq(N, K):- Check is K*K, not(0 is N mod Check), K1 is K+1, free_of_sq(N,K1).


%reading the list from the keyboard
%read_list/2
%read_list(+N,-List)
read_list(0, []) :- !.
read_list(N, [Head|Tail]) :- read(Head), NewN is N-1,
read_list(NewN,Tail).



%the sum of the list items, downward recursion
%sum_el_down/2
%sum_el_down(+List,?Sum)
sum_el_down(List, Sum) :- sum_el_down(List, 0, Sum).
sum_el_down([], Sum, Sum) :- !.
sum_el_down([H|T],CurSum, Sum) :- NewSum is CurSum + H,
	sum_el_down(T, NewSum, Sum).



%the sum of the list items, upward recursion
%sum_el_down/2
%sum_el_down(+List,?Sum)
sum_el_up([], 0) :- !.
sum_el_up([H|T], RSum) :-sum_el_up(T, Sum), RSum is H+Sum .


%deleting an element with a specified sum of digits
%remove_el/3
%remove_el(+List,+Sum,-Res)
remove_el([], _, []).
remove_el([H|T], Sum, Res) :- sum_cifr_down(H, SumEl),
    SumEl is Sum, remove_el(T, Sum, Res).
remove_el([H|T], Sum, [H|Res]) :-
    remove_el(T, Sum, Res).


%find the minimum number
%min/3
%min(+X,+Y,?Z)
min(X,Y,Y):-X>Y.
min(X,_,X).

%find the minimum digit of the number, upward recursion
%find_min/2
%find_min(+X, -M)
find_min(0,9).
find_min(X,M1):- X1 is X //10, Cifr is X mod 10, find_min(X1,M), min(Cifr,M,M1).

%downward recursion
find_min_d(X, Min):- find_min_d(X, 9, Min).
find_min_d(0,Min,Min).
find_min_d(X,Min1,Result):- X1 is X // 10, Cifr is X mod 10,
    min(Cifr, Min1, NewMin),find_min_d(X1, NewMin, Result).




%the mult of the digits of the number, recursion upwards
%mult_cifr_up/2
%mult_cifr_up(+X,?C)
mult_cifr_up(1,1).
mult_cifr_up(0,1).
mult_cifr_up(X,MultCifr):-X>0,X1 is X // 10, Ost is X mod 10,mult_cifr_up(X1, MultCifr1), not(Ost is 5), not(Ost is 0), MultCifr is MultCifr1 * Ost.
mult_cifr_up(X,M):-X>0,X1 is X // 10, mult_cifr_up(X1, M).


%the mult of the digits of the number, recursion downwards
%mult_cifr_down/2
%mult_cifr_down(+X,?C)
mult_cifr_down(N,X):- mult_cifr_down(N,1,X).
mult_cifr_down(1,X,X):-!.
mult_cifr_down(N,CurX,X):-N>0,N1 is N // 10, Ost is N mod 10,not(Ost is 5), not(Ost is 0), NewX is CurX * Ost, mult_cifr_down(N1, NewX, X).
mult_cifr_down(N,CurX,X):-N>0,N1 is N // 10, mult_cifr_down(N1, CurX,X).

%the largest common divisor of two numbers
%nod/3
%nod(+A,+B,?C)
nod(A,0,A):-!.
nod(_,0,_):-!,fail.
nod(A,B,C):-Ost is A mod B, nod(B,Ost,C).





min_el([X], X).
min_el([X,Y|T], Min) :- X =< Y,  min_el([X|T], Min).
min_el([X,Y|T], Min) :-  X > Y,  min_el([Y|T], Min).


% find_pred_min(List, Res):- min_el(List, Min), find_pred_min(List,Min,0,
% 0,Res).
%find_pred_min([H,Min|_],Min,K,K,H):!.
% find_pred_min([Min|T],Min,CurK,K,Res):-K1 is K+1,
% find_pred_min(T,Min,CurK,K1, Res).
% find_pred_min([H|T],Min,CurK,K,Res):-not(T=[]),find_pred_min(T,Min,CurK,K,Res).
%




