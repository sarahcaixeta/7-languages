valid_queen((_, Col)) :-
  member(Col, [1, 2, 3, 4, 5, 6, 7, 8]).

valid_board([]).
valid_board([Head|Tail]) :-
  valid_queen(Head),
  valid_board(Tail).

cols([], []).
cols([(_, Col) | QueensTail], [Col|ColsTail]) :-
  cols(QueensTail, ColsTail).

diagonal1([], []).
diagonal1([(Row, Col) | QueensTail], [Diagonal| DiagonalsTail]) :-
  Diagonal is Col - Row,
  diagonal1(QueensTail, DiagonalsTail).

diagonal2([], []).
diagonal2([(Row, Col) | QueensTail], [Diagonal|DiagonalsTail]) :-
  Diagonal is Col + Row,
  diagonal2(QueensTail, DiagonalsTail).

eight_queens(Board) :-
  Board = [(1,_), (2,_), (3,_), (4,_), (5,_), (6,_), (7,_), (8,_)],
  valid_board(Board),

  cols(Board, Cols),
  diagonal1(Board, Diags1),
  diagonal2(Board, Diags2),

  all_different(Cols),
  all_different(Diags1),
  all_different(Diags2).
