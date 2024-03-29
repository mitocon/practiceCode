n, m, t = gets.chomp.split(" ").map(&:to_i)
aLine = gets.split(" ").map(&:to_i)
xy = []
(0..(m - 1)).each do |l|
  xy[l] = gets.split(" ").map(&:to_i)
end

flag = true
(0..n - 2).each do |num|
  t = t - aLine[num]
  if t <= 0
    flag = false
    break
  end
  if not xy.empty?
    if xy[0][0] == num + 2
      t = t + xy[0][1]
      xy.shift()
    end
  end
end

if flag == true
  puts "Yes"
else
  puts "No"
end
