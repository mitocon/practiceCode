def fiz()
  x, a, b = gets.chomp.split(" ").map(&:to_i)
  s = a.lcm(b)
  puts (1 + x) * x / 2 - ((a + (x - x % a)) * (x / a) / 2 + (b + (x - x % b)) * (x / b) / 2) + (s + (x - x % s)) * (x / s) / 2
end

fiz()
