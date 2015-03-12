fibonacci := method(n,
  fib := 1
  previous := 1
  for(i, 3, n,
    aux := fib
    fib = previous + fib
    previous = aux
  )
  return fib
)

fibonacci(12) println
