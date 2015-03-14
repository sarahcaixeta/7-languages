# Write a prototype for a two-dimensional list. The dim(x, y) method should
# allocate a list of y lists that are x elements long. set(x, y, value) should set
# a value, and get(x, y) should return that value.


Matrix := List clone
Matrix content := List clone
Matrix dim := method(x, y,
  for(i, 0, x - 1,
    innerList := List clone
    innerList setSize(y)
    content append(innerList)
  )
)
Matrix set := method(x, y, value,
  content at(x) atPut(y, value)
)
Matrix print := method(
  for(i, 0, content size -1, content at(i) println)
)
m := Matrix clone
m dim(3, 5)
m set(2, 3, "buu")
m set(1, 1, "ahh")
m print
