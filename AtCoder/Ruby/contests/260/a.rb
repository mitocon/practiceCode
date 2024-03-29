s = gets.chomp.chars
answer = "-1"
s.each do |a|
  if s.count(a) == 1
    answer = a
  end
end
puts answer
