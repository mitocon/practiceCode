n, m = gets.chomp.split(" ").map(&:to_i)
listX = gets.split(" ").map(&:to_i)
listCY = []
(0..(m - 1)).each do |num|
  listCY[num] = gets.split(" ").map(&:to_i)
end

p listCY
p 2 ** 5000
