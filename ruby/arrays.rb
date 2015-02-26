numbers = (1..16).to_a

position = 0
numbers.each do |number|
  if position % 4 == 0
    p numbers[position, 4]
  end
  position += 1
end
