def Kagamimochi()
  n = gets.to_i
  # n回インプット
  arr = []
  (0..(n - 1)).each do |l|
    arr[l] = gets
  end
  puts arr.uniq.size
end

Kagamimochi()
