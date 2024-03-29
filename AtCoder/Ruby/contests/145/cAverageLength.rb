n = gets.to_i

arr = []
(0..(n - 1)).each do |l|
  arr[l] = gets.split(" ")
end

len = 0
lenn = 0
arr.each do |list|
  (0..((arr.length) - 1)).each do |m|
    xlen = list[0].to_i - arr[m][0].to_i
    ylen = list[1].to_i - arr[m][1].to_i
    len += Math.sqrt((xlen ** 2) + (ylen ** 2))
  end
end

puts len / n

# p Math.sqrt(i)
#平方根
#標準入力　複数の場合
