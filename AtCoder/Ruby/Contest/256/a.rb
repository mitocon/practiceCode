n = gets.to_i
result = 1
(0..(n - 1)).each do |num|
  result *= 2
end

puts result
