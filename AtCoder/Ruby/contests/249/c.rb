n, k = gets.split.map(&:to_i)
s = n.times.map { gets.chomp }

ans = []

[0, 1].repeated_permutation(n).each do |combi|
  p = ""
  combi.each.with_index do |flag, index|
    p += s[index] * flag
  end
  ans << p.chars.tally.count { |_, v| v == k }
end
puts ans.max
