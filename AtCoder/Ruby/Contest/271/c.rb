n = gets.to_i
line = gets.split(" ").map(&:to_i).sort.uniq

last = 0
r = n + 1
while r-last>1
  # m巻まで読めるか
  m = (last + r) / 2
  # m巻までに所持している冊数
  havingBook = ([*1..m]&line).length
  if havingBook + (n - havingBook) / 2 >= m
    last = m
  else
    r = m
  end
end

puts last
