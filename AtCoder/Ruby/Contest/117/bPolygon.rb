def bPolygon()
  n = gets.to_i
  l = gets.split(" ").map(&:to_i)
  if l.sum - l.max > l.max
    puts "Yes"
  else
    puts "No"
  end
end

bPolygon()
