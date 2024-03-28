def jogging()
  arr = gets.split(" ")
  a = arr[0].to_i
  b = arr[1].to_i
  c = arr[2].to_i
  d = arr[3].to_i
  e = arr[4].to_i
  f = arr[5].to_i
  x = arr[6].to_i
  ta = calc_dis(a, b, c, x)
  ao = calc_dis(d, e, f, x)

  if ta > ao
    puts "Takahashi"
  elsif ao > ta
    puts "Aoki"
  else
    puts "Draw"
  end
end

def calc_dis(a, b, c, x)
  dis = x / (a + c) * a * b
  if x % (a + c) >= a
    dis = dis + a * b
  else
    dis = dis + (x % (a + c)) * b
  end
  return dis
end

jogging()
