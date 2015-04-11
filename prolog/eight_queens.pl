valid_queen((Row, Col)) :-
  Range = [1, 2, 3, 4, 5, 6, 7, 8],
  member(Row, Range), member(Col, Range).

valid_board([]).
valid_board([Head|Tail]) :-
  valid_queen(Head),
  valid_board(Tail).

rows([], []).
rows([(Row, _) | QueensTail], [Row|RowsTail]) :-
  rows(QueensTail, RowsTail).

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
  length(Board, 8),
  valid_board(Board),

  rows(Board, Rows),
  cols(Board, Cols),
  diagonal1(Board, Diags1),
  diagonal2(Board, Diags2),

  all_different(Rows),
  all_different(Cols),
  all_different(Diags1),
  all_different(Diags2).
