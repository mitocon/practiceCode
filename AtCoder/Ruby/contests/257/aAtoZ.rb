n, x = gets.chomp.split(" ").map(&:to_i)

list = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

if x % n == 0
  puts list[(x / n) - 1]
else
  puts list[(x / n + 1) - 1]
end
