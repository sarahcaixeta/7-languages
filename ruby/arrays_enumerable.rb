numbers = (1..16).to_a

numbers.each_slice(4) { |inner_array| p inner_array }
