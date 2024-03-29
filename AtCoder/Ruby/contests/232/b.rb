s = gets.chomp
t = gets.chomp
sList = s.bytes.to_a # [115, 97]
tList = t.bytes.to_a
sAns = []
tAns = []

(0..(sList.size - 2)).each do |num|
  if (sList[num] - sList[num + 1]) >= 0
    sAns.push(sList[num] - sList[num + 1])
  else
    sAns.push(sList[num] - sList[num + 1] + 26)
  end
end

(0..(tList.size - 2)).each do |num|
  if (tList[num] - tList[num + 1]) >= 0
    tAns.push(tList[num] - tList[num + 1])
  else
    tAns.push(tList[num] - tList[num + 1] + 26)
  end
end

if sAns == tAns
  puts "Yes"
else
  puts "No"
end
