n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
count1 = 0
(0..(n - 1)).each do |num|
  if a[num] == b[num]
    count1 += 1
  end
end
puts count1
puts (a & b).length - count1
s = []
p s[0] = "string"
p s[1] = "string2"
p s
arr = ["middleware" => ["auth"]]
p arr
