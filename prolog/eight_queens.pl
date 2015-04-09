valid_queen((Row, Col)) :-
  Range = [1, 2, 3, 4, 5, 6, 7, 8],
  member(Row, Range), member(Col, Range).

eight_queens(List) :-
  length(List, 8).
