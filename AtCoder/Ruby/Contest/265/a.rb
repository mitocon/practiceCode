x, y, n = gets.chomp.split(" ").map(&:to_i)
if x * 3 <= y
  puts x * 10
else
  puts n / 3 * y + n % 3 * x
end
