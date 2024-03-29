def growthRecord()
  n, m, x, t, d = gets.chomp.split(" ").map(&:to_i)
  if m >= x
    puts t
  else
    puts t - (x - m) * d
  end
end

growthRecord()
