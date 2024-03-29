x, y, z = gets.chomp.split(" ").map(&:to_i)
if x < 0
  x = -x
  y = -y
  z = -z
end
if y<0 || x < y
  puts x
elsif z > y
  puts -1
else
  if z<0
    puts -z*2 +x
  else
    puts x
  end
end
