l, r = gets.chomp.split(" ").map(&:to_i)
puts "atcoder".slice!((l - 1)..(r - 1))
