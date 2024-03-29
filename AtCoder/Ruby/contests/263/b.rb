n = gets.to_i
line = gets.split(" ").map(&:to_i)
line.unshift 1
line.unshift 1
pointer = n
count = 0
while (pointer != 1)
  count += 1
  pointer = line[pointer]
end

puts count
