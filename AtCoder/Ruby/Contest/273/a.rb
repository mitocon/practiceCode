# 整数の入力
n = gets.to_i

a = 1
ans = 1
(1..n).each do |num|
  ans = a * num
  a = ans
end
puts ans
