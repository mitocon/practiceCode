# 未完成

n = gets.to_i
jumpRamps = []
(0..(n - 1)).each do |l|
  jumpRamps[l] = gets.split(" ").map(&:to_i)
end
listA = []
(0..(jumpRamps.length - 1)).each do |numA|
  list = []
  (0..(jumpRamps.length - 1)).each do |numB|
    if numA != numB
      list.push((((jumpRamps[numA][0] - jumpRamps[numB][0]).abs + (jumpRamps[numA][1] - jumpRamps[numB][1]).abs) / jumpRamps[numB][2]).ceil)
    end
  end
  listA.push(list.min)
end
puts listA.sort.reverse
