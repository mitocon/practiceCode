def alcoholic()
  n, x = gets.chomp.split(" ").map(&:to_i)
  list = []
  (0..(n - 1)).each do |num|
    list[num] = gets.split(" ").map(&:to_i)
  end
  sum = 0
  count = 0
  ans = -1
  x *= 100
  list.each do |nCup|
    count += 1
    sum += nCup[0] * nCup[1]
    if x < sum
      ans = count
      break
    end
  end

  puts ans
end

alcoholic()
