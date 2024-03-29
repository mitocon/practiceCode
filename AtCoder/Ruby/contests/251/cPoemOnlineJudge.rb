# 未完

def c
  n = gets.to_i
  arry = []
  strList = []
  point = 0
  count = 0
  ll = []
  (0..(n - 1)).each do |e|
    arry[e] = gets.split(" ")
    arry[e].push(e + 1)
    ll.push(arry[0])
  end
  arry.sort_by { |_, b, c| b }.reverse.each do |ele|
    if ll.count(ele[0]) == 1
      puts ele[2]
      break
    end
  end
  # (0..(n - 1)).each do |e|
  #   if strList.include?(arry[e][0]) == false
  #     strList.push(arry[e][0])
  #     if point < arry[e][1].to_i
  #       point = arry[e][1].to_i
  #       count = e
  #     end
  #   end
  # end

  # puts count + 1
end

c()
