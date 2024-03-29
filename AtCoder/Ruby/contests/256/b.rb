def batters()
  n = gets.to_i
  aList = gets.split(" ").map(&:to_i)
  points = 0
  if n >= 3
    if aList[-1] == 4
      puts n
    elsif (aList[-2] + aList[-1]) >= 4
      puts n - 1
    elsif (aList[-3] + aList[-2] + aList[-1]) >= 4
      puts n - 2
    else
      puts n - 3
    end
  elsif n == 2
    if aList[-1] == 4
      puts n
    elsif (aList[-2] + aList[-1]) >= 4
      puts n - 1
    else
      puts n - 2
    end
  elsif n == 1
    if aList[-1] == 4
      puts n
    else
      puts n - 1
    end
  end
end

batters()
