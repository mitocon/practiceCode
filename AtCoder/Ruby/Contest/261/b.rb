n = gets.to_i
list = []
(0..(n - 1)).each do |num|
  list[num] = gets.chomp.chars
end

flag = true

(0..(n - 1)).each do |row|
  (0..(n - 1)).each do |line|
    if row == line
      if list[row][line] != "-"
        flag = false
        break
      end
    elsif row < line
      if !((list[row][line] == "W" && list[line][row] == "L") || (list[row][line] == "L" && list[line][row] == "W") || (list[row][line] == "D" && list[line][row] == "D"))
        flag = false
        break
      end
    end
  end
  if flag == false
    break
  end
end

if flag == false
  puts "incorrect"
else
  puts "correct"
end
