n = 10
arr = []
(0..(n - 1)).each do |l|
  arr[l] = gets.chomp.split("")
end

a=10
c=10
b=10
d=10

(0..9).each do |arrNum|
  subArr=arr[arrNum]
  if subArr.include?("#")
    a = arrNum+1
    c = (subArr.index("#")+1)
    break
  end
end

revArr=arr.reverse
(0..9).each do |arrNum|
  subArr=revArr[arrNum]
  if subArr.include?("#")
    b = 10-arrNum
    d = 10-(subArr.reverse.index("#"))
    break
  end

end
puts a.to_s+" "+b.to_s
puts c.to_s+" "+d.to_s
