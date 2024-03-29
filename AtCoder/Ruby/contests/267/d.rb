n, m = gets.chomp.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)

(0..3).each do |num|
  p arr.slice(num, num + 2)
end
