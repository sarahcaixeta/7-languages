//command to run: io day1.io
Dog := Object clone
Dog description := "Best friend"

max := Dog clone
max description println

Dog bark := method("Au Au" println)

"calling a method" println
max bark

"executing from slot" println
max perform("bark")
