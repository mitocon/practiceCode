# vol.1
# arr = arr.sort
# ans = ""
# (0..(arr.length - 1)).each do |num|
#   ans << arr[num]
# end
# puts ans

# vol.2
arr = gets.chomp.chars
puts arr.sort.join

# vol.3
# puts gets.chomp.chars.sort.join

# 別解
alpha = "abcdefghijklmnopqrstuvwxyz".chars
p alpha
h = Hash.new(0)
arr.each { |v| h.store(v, h[v] + 1) }
p h
# h = { 3=>3, 2=>1, 1=>1, 4=>1 }

p nil || false
