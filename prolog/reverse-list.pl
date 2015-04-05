reverseList([], []).
reverseList([Head|Tail], List) :-
  reverseList(Tail, PartialList),
  append(PartialList, [Head], List).
