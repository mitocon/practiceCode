def b()
  n, w = gets.chomp.split(" ").map(&:to_i)
  as = gets.split(" ")
  arr = []
  (0..(n - 1)).each do |l|
    arr[l] = as[l].to_i
  end
  arr.push(0)
  arr.push(0)
  x = arr.combination(3).to_a
  list = []
  x.each do |ele|
    sum = 0
    ele.each do |elem|
      sum += elem
    end
    if sum <= w
      list.push(sum)
    end
  end
  puts list.uniq.size
end

b()
