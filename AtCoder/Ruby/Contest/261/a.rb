l1, r1, l2, r2 = gets.chomp.split(" ").map(&:to_i)
list1 = []
list2 = []
(l1..r1).each do |num|
  list1 << num
end
(l2..r2).each do |num|
  list2 << num
end

count = 0

list1.each do |num|
  if list2.include?(num)
    count += 1
  end
end

if count == 0
  puts 0
else
  puts count - 1
end
