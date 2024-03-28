def asciicode()
  n = gets.to_i
  cycle = n - 97
  str = "a"
  (1..cycle).each do |num|
    str = str.succ
  end
  puts str
end

asciicode()
