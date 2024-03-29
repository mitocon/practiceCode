def bTakahashi()
  n, k = gets.chomp.split(" ").map(&:to_i)
  as = gets.split(" ")
  as2 = gets.split(" ")
  arra = []
  arrb = []
  (0..(n - 1)).each do |l|
    arra[l] = as[l].to_i
  end
  (0..(k - 1)).each do |l|
    arrb[l] = as2[l].to_i
  end

  delicious = 0
  dList = []
  (0..(n - 1)).each do |num|
    if delicious < arra[num]
      delicious = arra[num]
      dList = []
      dList.push(num + 1)
    elsif delicious == arra[num]
      dList.push(num + 1)
    end
  end

  bool = false
  arrb.each do |ele|
    if dList.include?(ele)
      bool = dList.include?(ele)
      break
    end
  end
  if bool
    puts "Yes"
  else
    puts "No"
  end
end

bTakahashi()
