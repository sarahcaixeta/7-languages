Matrix := List clone
Matrix dim := method(x, y,
  for(i, 0, x - 1,
    innerList := List clone
    innerList setSize(y)
    self append(innerList)
  )
)
Matrix set := method(x, y, value,
  self at(x) atPut(y, value)
)
Matrix get := method(x, y,
  self at(x) at(y)
)
Matrix print := method(
  for(i, 0, self size -1, self at(i) println)
)
Matrix transpose := method(
  transposed := Matrix clone
  x := self size
  y := self at(0) size
  transposed dim(y, x)
  for (i, 0, y -1,
    for (j, 0, x-1,
      transposed set(i, j, self get(j, i))
    )
  )
  return transposed
)
Matrix writeToFile := method(
  f := File openForUpdating("matrix.txt")
  f write(self serialized)
  f close
)
Matrix readFromFile := method(
  self = doFile("matrix.txt")
  self setProto Matrix
)
m := Matrix readFromFile
m dim(3, 5)
m set(2, 3, "buu")
m set(1, 1, "ahh")
m print
