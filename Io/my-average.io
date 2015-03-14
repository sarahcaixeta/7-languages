# Add a slot called myAverage to a list that
# computes the average of all the numbers in a list.
# What happens if there are no numbers in a list?
# (Bonus: Raise an Io exception if any item in
# the list is not a number.)


List myAverage := method(
  return self sum / self size
)
myList := list(13, 15, 17, 10)
myList myAverage println
