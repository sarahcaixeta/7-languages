# Write a prototype for a two-dimensional list. The dim(x, y) method should
# allocate a list of y lists that are x elements long. set(x, y, value) should set
# a value, and get(x, y) should return that value.


Matrix := Object clone
Matrix content := List clone
Matrix dim := method(x, y,
  for(i, 0, x - 1,
    innerList := List clone
    for(j, 0, y - 1,
      innerList append(nil)
    )
    content append(innerList)
  )
)

m := Matrix clone
m dim(3, 5)
m content println
