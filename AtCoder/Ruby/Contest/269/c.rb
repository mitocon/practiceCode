n = gets.to_i.to_s(2)
digit = 0
arr = []
n.chars.reverse.each do |ch|
  if ch == "1"
    arr.append(2**digit)
  end
  digit +=1
end

ans =[]

SET = arr

cnt = 0
len = arr.length

while cnt < (1 << len)
  bit = cnt.to_s(2).rjust(len,'0').split("").map(&:to_i)

  sum = 0
  SET.zip(bit).each do |test|
    item,b = test.first,test.last
    # bitが1だったら処理
    if b==1
      sum += item
    end
  end
  ans << sum
  cnt+=1
end

puts ans.sort
