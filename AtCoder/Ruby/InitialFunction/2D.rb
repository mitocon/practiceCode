arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
copy = []
arr.each do |arr2|
  copy.push(arr2.dup)
end

copy[0][0] = 100
p arr
