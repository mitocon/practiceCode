# WA

n, k = gets.chomp.split(" ").map(&:to_i)
line = gets.split(" ").map(&:to_i).sort.reverse
times = 0
cycle = 0
turn = 0
sum = 0
beforeTurn = 0
line.each do |num|
  times = n / num
  turn = times % 2
  if times > 0
    if beforeTurn % 2 == 0 # 高橋先行
      sum += (times / 2) * num + turn * num
    else # 青木先行
      sum += (times / 2) * num
    end
  else
    next
  end
  beforeTurn += turn
  n =  n % num
end

puts sum
