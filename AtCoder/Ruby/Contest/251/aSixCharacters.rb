def a()
  n = gets
  n = n.chomp
  len = n.length
  cy = 6 / len
  if cy == 6
    n = "#{n}#{n}#{n}#{n}#{n}#{n}"
  elsif cy == 3
    n = "#{n}#{n}#{n}"
  elsif cy == 2
    n = "#{n}#{n}"
  end
  puts n
end

a()
