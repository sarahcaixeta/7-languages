squareBrackets := method(
  l := List clone
  call message arguments foreach(arg,
    l append(arg)
  )
  l
)
bracketsList := [1,2,3]
bracketsList at(0) println
bracketsList at(1) println
bracketsList at(2) println
