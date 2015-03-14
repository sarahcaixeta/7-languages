number := Random value(100) floor
for(try, 0, 10,
  "Guess the number" println
   standardIO := File standardInput();
   guess := standardIO readLine() asNumber();
   if (guess == number,
    "Congrats" println
    break
  )
)
