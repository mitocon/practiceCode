r, c = gets.chomp.split(" ").map(&:to_i)
# 0 white 1 black
color = 0
case r
when 1, 15
  color = 1
when 2, 14
  case c
  when 1, 15
    color = 1
  end
when 3, 13
  case c
  when 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15
    color = 1
  else
    color = 0
  end
when 4, 12
  case c
  when 1, 3, 13, 15
    color = 1
  else
    color = 0
  end
when 5, 11
  case c
  when 1, 3, 5, 6, 7, 8, 9, 10, 11, 13, 15
    color = 1
  else
    color = 0
  end
when 6, 10
  case c
  when 1, 3, 5, 11, 13, 15
    color = 1
  else
    color = 0
  end
when 7, 9
  case c
  when 1, 3, 5, 7, 8, 9, 11, 13, 15
    color = 1
  else
    color = 0
  end
when 8
  case c
  when 1, 3, 5, 7, 9, 11, 13, 15
    color = 1
  else
    color = 0
  end
end

if color == 1
  puts "black"
else
  puts "white"
end
