n, k, q = gets.chomp.split(" ").map(&:to_i)
aList = gets.split(" ").map(&:to_i)
lList = gets.split(" ").map(&:to_i)

lList.each do |l|
  # 最後の1個を指定されたとき
  if (l - 1) == ((aList.length) - 1)
    if aList[l - 1] != n
      aList[l - 1] += 1
    end
    # 最後の1個ではない かつ 1個前の数字と被らない
  elsif (aList[l - 1] + 1) != aList[l]
    aList[l - 1] += 1
  end
end
puts aList.join(" ")
