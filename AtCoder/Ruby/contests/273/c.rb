n = gets.to_i
a = gets.split(" ").map(&:to_i).sort.reverse

q = a[0]
count = 0
s = []
a.each do |aa|
  if aa == q
    count += 1
  else
    s << count
    count = 1
    q = aa
  end
end
s << count
s += [0] * (n - s.length)
puts s
