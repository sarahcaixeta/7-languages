sum_matrix := method(matrix,
  matrixSum := 0
  for(i, 0, matrix size -1, matrixSum = matrixSum + matrix at(i) sum)
  return matrixSum
)

list1 := list(5, 2, 3)
list2 := list(1, 2, 4)
matrix := list(list1, list2)
sum_matrix(matrix) println
