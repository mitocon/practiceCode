def sunuke()
  n = gets.to_i
  arr = gets.split(" ")
  arr = arr.map { |x| x.to_i }

  count = 0

  while arr.all? { |n| n % 2 == 0 }
    count += 1
    arr = arr.map { |x| x / 2 }
  end

  puts count
end

sunuke()
