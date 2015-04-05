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
