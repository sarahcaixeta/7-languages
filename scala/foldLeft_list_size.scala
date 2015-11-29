val strings = List("a", "b", "c", "d", "e")

val size = (0 /: strings) { (size, item) => size + 1}

println(size)
