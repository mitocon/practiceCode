x, k = gets.chomp.split(" ").map(&:to_i)
(0..k).each do |num|
  x = x.round(-num)
end
p x
