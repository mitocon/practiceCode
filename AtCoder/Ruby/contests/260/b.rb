n, x, y, z = gets.chomp.split(" ").map(&:to_i)
lineA = gets.split(" ").map(&:to_i)
lineB = gets.split(" ").map(&:to_i)
arr = Array.new(n) { Array.new(2, 0) }
(0..(n - 1)).each do |num|
  arr[num][0] = num + 1
  arr[num][1] = lineA[num]
  arr[num][2] = lineB[num]
  arr[num][3] = false
end

ansA = []

lineA.max(x).each do |aMax|
  (0..(arr.length - 1)).each do |arrNum|
    if arr[arrNum][1] == aMax && arr[arrNum][3] == false && ansA.length < x
      ansA.push(arr[arrNum][0])
      arr[arrNum][3] = true
    end
  end
end

ansA.sort.reverse.each do |num|
  arr.delete_at(num - 1)
end

arrB = []
ansB = []

arr.each do |array|
  arrB.push(array[2])
end

arrB.max(y).each do |bMax|
  (0..(arrB.length - 1)).each do |arrNum|
    if arrB[arrNum][1] == bMax && arrB[arrNum][3] == false && ansB.length < y
      ansB.push(arrB[arrNum][0])
      arrB[arrNum][3] = true
    end
  end
end

p arr
p ansA.sort
p ansB.sort
