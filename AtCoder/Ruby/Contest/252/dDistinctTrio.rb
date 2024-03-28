def distinct()
  n = gets.to_i
  as = gets.split(" ")
  #nCr
  nn = as.uniq.size
  r = 3
  sum = 0
  data = as.group_by(&:itself).map { |k, v| [k, v.size] }
  Hash[data].values.combination(3).to_a.each do |nums|
    sum += nums.inject { |result, item| result * item }
  end
  puts sum
end

distinct()
