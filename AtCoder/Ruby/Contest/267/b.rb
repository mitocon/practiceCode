s = gets.chomp.chars.map(&:to_i).unshift 0
left1 = s[7] == 1
left2 = s[4] == 1
left3 = (s[2] == 1 || s[8] == 1)
left4 = s[5] == 1
left5 = (s[3] == 1 || s[9] == 1)
left6 = s[6] == 1
left7 = s[10] == 1

t = ""
if left1 == true
  t << "1"
else
  t << "0"
end
if left2 == true
  t << "1"
else
  t << "0"
end
if left3 == true
  t << "1"
else
  t << "0"
end
if left4 == true
  t << "1"
else
  t << "0"
end
if left5 == true
  t << "1"
else
  t << "0"
end
if left6 == true
  t << "1"
else
  t << "0"
end
if left7 == true
  t << "1"
else
  t << "0"
end

ans = "No"
if s[1] == 0
  if t.include? "101"
    ans = "Yes"
  elsif t.include? "1001"
    ans = "Yes"
  elsif t.include? "10001"
    ans = "Yes"
  elsif t.include? "100001"
    ans = "Yes"
  elsif t.include? "1000001"
    ans = "Yes"
  end
end
puts ans
