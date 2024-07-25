%Name: Abdelrhman Saeed

% :( %

%--------------------------------------%

%Add digit to index
move_index(0, [_|T], X, [X|T]).
move_index(I,[H|T],X,[H|R]) :-
  I > 0,
  I1 is I - 1,
  move_index(I1, T, X, R).

%-----------------------------------------%
%cheak queue

check_q(Queue) :-
    Queue = [Head|_],
    check(Head),
    write(Head),
    !.

check_q(Queue) :-
     Queue = [Head|Tail],
    next_move(Head, New_boards),
    append(Tail, New_boards, New_queue),
    bfs_aux(New_queue).

check(Board) :-
    valid(Board),
    \+ member(_, Board).



:- use_module(library(clpfd)).

valid(Board):-


  Board =

[
             A1, A2, B1, B2,
             C1, C2, D1, D2
            ,A3, A4, B3, B4,
             C3, C4, D3, D4
],

    Board ins 1..4,

    %valid columns.
    all_different([A1,C1,C3,A3]),
    all_different([B1,D1,D3,B3]),
    all_different([A2,C2,C4,A4]),
    all_different([B2,B4,D2, D4]),
    %valid rows.
    all_different([A1,A2,B1,B2]),
    all_different([C1,C2,D1,D2]),
    all_different([A3,A4,B3,B4]),
    all_different([C3,C4,D3,D4]),
    %squares
    all_different([A1,A2,C1,C2]),
    all_different([B1,B2,D1,D2]),
    all_different([B3,B4,D3,D4]),
    all_different([A3,A4,C3,C4]).



%-----------------------------------------%
%place
place(Board, Index, Digit, X):-
  Index >= 0,
  Index =< 15,
  nth0(Index, Board, Element),
  var(Element),
  move_index(Index, Board, Digit, X).
%---------------------------------------%
%first_empty
first_empty([H|_], 0) :- var(H).
first_empty([_|T], R) :-first_empty(T, R1),R is R1 + 1.



% --------------------------------------------------------%
% next_move
next_move(Board, Moves) :-
  first_empty(Board, Index),
  findall(NewBoard, (member(X, [1,2,3,4]), place(Board, Index, X, NewBoard),valid(NewBoard)), Moves).


%--------------------------------------%
%Dfs

dfs(Board) :-
    valid(Board),
    write(Board),
    !.

dfs(Board) :-
    next_move(Board, New_boards),
    member(New_board, New_boards),
    dfs(New_board).

%-------------------------------------%
%bfs

bfs(Board) :-
    valid(Board),
    write(Board),
    !.

bfs(Board) :-
    Queue = [Board],
    check_q(Queue).
%-----------------------------------%
%heuristic

heuristic(Board) :-
    valid(Board),
    write(Board),
    !.

heuristic(Board) :-
     next_move(Board, Move),
     sort(Move, Sorted_Move),

    member(Next_Board,Sorted_Move),
    heuristic(Next_Board).


%------------------- Thank You -----------------------%
