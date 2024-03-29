# 未完
def operation()
  x, a, d, n = gets.chomp.split(" ").map(&:to_i)
  e = a + d * (n - 1)

  if d == 0
  elsif d > 0
  else
    tmp = 0
    tmp = a
    a = e
    e = tmp
  end

  # 負負
  if (x - a) < 0 && (x - e) < 0
    puts a - x

    # 正負
  elsif (x - a) > 0 && (x - e) < 0
    dis1 = (x - a) % d
    dis2 = (e - x) % d
    puts [dis1, dis2].min

    # 正正
  elsif (x - a) > 0 && (x - e) > 0
    puts x - e
  elsif x == a
    puts 0
  elsif x == e
    puts 0
  end
end

operation()
