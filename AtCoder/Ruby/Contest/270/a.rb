a, b = gets.chomp.split(" ").map(&:to_i)
listT=[]
listA=[]
def pro(score)
  if score == 7
    return [1,2,4]
  elsif score == 6
    return [2,4]
  elsif score == 5
    return [1,4]
  elsif score == 4
    return [4]
  elsif score == 3
    return [1,2]
  elsif score == 2
    return [2]
  elsif score == 1
    return [1]
  else
    return []
  end
end
listT = pro(a)
listA = pro(b)
puts listT.push(listA).flatten!.uniq.sum
