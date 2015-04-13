sudoku(Puzzle, Solution) :-
  Solution = Puzzle,
  Puzzle = [S11, S12, S13, S14, S15, S16,
            S21, S22, S23, S24, S25, S26,
            S31, S32, S33, S34, S35, S36,
            S41, S42, S43, S44, S45, S46,
            S51, S52, S53, S54, S55, S56,
            S61, S62, S63, S64, S65, S66],
  Puzzle ins 1..6,

  Row1 = [S11, S12, S13, S14, S15, S16],
  Row2 = [S21, S22, S23, S24, S25, S26],
  Row3 = [S31, S32, S33, S34, S35, S36],
  Row4 = [S41, S42, S43, S44, S45, S46],
  Row5 = [S51, S52, S53, S54, S55, S56],
  Row6 = [S61, S62, S63, S64, S65, S66],

  Col1 = [S11, S21, S31, S41, S51, S61],

  valid([Row1, Row2, Row3, Row4, Row5, Row6,
    Col1]).

valid([]).
valid([Head|Tail]) :-
  all_different(Head),
  valid(Tail).
