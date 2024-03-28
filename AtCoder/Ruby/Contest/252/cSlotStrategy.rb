def slot()
  n = gets.to_i
  arr = []
  (0..(n - 1)).each do |num|
    arr[num] = gets.to_i
  end
  puts arr
end

slot()
