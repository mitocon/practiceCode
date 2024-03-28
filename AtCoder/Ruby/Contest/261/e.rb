# 未完
n, c = gets.chomp.split(" ").map(&:to_i)
listTA = []
listX = []
c = c.to_s(2)
(0..(n.to_i - 1)).each do |num|
  listTA[num] = gets.chomp.split(" ").map(&:to_i)
  c = (listTA[num][1].to_s(2).to_i ^ c.to_s(2).to_i)
end

puts 10.to_s(2)
# p listTA
