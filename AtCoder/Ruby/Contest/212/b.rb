list = gets.chomp.chars.map(&:to_i)
ans = "Strong"

def judge(a, b)
  (a + 1) % 10 == b
end

if list.uniq.length == 1
  ans = "Weak"
elsif judge(list[0], list[1]) && judge(list[1], list[2]) && judge(list[2], list[3])
  ans = "Weak"
end

puts ans&ans
