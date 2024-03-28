r, c = gets.chomp.split(" ").map(&:to_i)
a11, a12 = gets.chomp.split(" ").map(&:to_i)
a21, a22 = gets.chomp.split(" ").map(&:to_i)
out = 0
if r == 1
  if c == 1
    out = a11
  else
    out = a12
  end
else
  if c == 1
    out = a21
  else
    out = a22
  end
end

puts out
