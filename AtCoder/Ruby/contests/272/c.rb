# AC
n = gets.to_i
line = gets.split(" ").map(&:to_i).sort.reverse
count_even = 0
count_odd = 0
odd_list = []
even_list = []

line.each do |num|
  if count_even < 2 && num % 2 == 0
    even_list.push(num)
    count_even += 1
  elsif count_odd < 2 && num % 2 == 1
    odd_list.push(num)
    count_odd += 1
  end
  if count_even == 2 && count_odd == 2
    break
  end
end

if even_list.length == 2 && odd_list.length == 2
  puts [odd_list.sum, even_list.sum].max
elsif even_list.length == 2
  puts even_list.sum
elsif odd_list.length == 2
  puts odd_list.sum
else
  puts -1
end
