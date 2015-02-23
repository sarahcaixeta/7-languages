def guess_the_number number
  puts 'guess the number'
  guess = gets.to_i
  if guess == number
    puts 'congrats'
  else
    puts "oops, the right number was #{number}"
  end
end

guess_the_number rand(10)
