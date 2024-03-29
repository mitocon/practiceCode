def placingMarbles()
  n = gets
  count = 0
  n.chars do |num|
    if num == "1"
      count += 1
    end
  end
  puts count
end

placingMarbles()
