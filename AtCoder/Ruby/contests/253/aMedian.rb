def median()
  a, b, c = gets.chomp.split(" ").map(&:to_i)
  big = 0
  small = 0
  if a > c
    big = a
    small = c
  else
    big = c
    small = a
  end
  if big >= b && b >= small
    puts "Yes"
  elsif big == b && b == small
    puts "Yes"
  else
    puts "No"
  end
end

median()
