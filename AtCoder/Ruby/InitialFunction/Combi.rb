def combi(n, k)
  k = n - k if 2 * k > n
  return 1 if k == 0
  return ((n - k + 1)..n).reduce(&:*) / ((1..k).reduce(&:*))
end

puts combi(10000, 4)
puts 100 * 99 * 98 * 97 / 4 / 3 / 2 / 1
