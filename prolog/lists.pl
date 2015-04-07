reverseList([], []).
reverseList([Head|Tail], List) :-
  reverseList(Tail, PartialList),
  append(PartialList, [Head], List).

smallest([Number], Number).
smallest([Head|Tail], Smallest) :-
  smallest(Tail, Number),
  Number < Head,
  Smallest is Number.
smallest([Head|Tail], Smallest) :-
  smallest(Tail, Number),
  Head < Number,
  Smallest is Head.

merge([], List, List).
merge(List, [], List).
merge(Xs, Ys, S) :-
  Xs = [X|Xs0],
  Ys = [Y|Ys0],
  (X @=< Y ->
    S = [X|S0],
    merge(Xs0, Ys, S0)
  ;
    S = [Y|S0],
    merge(Xs, Ys0, S0)
  ).

split_at(List, Index, FirstPart, LastPart) :-
  length(FirstPart, Index),
  append(FirstPart, LastPart, List).

split_in_half(List, FirstHalf, SecondHalf) :-
  length(List, Len),
  Half is Len // 2,
  split_at(List, Half, FirstHalf, SecondHalf).

mergesort([Item], [Item]).
mergesort(List, SortedList) :-
  split_in_half(List, Left, Right),
  mergesort(Left, SortedLeft),
  mergesort(Right, SortedRight),
  merge(SortedLeft, SortedRight, SortedList).
