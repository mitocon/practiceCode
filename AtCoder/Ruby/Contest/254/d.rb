# 未完
def square()
  count = 0
  n = gets.to_i
  (1..n).each do |yoso|
    count += (1..n).select { |i|
      yoso * yoso % i == 0 && yoso * yoso / i <= n
    }.length
  end
  puts count
end

square()
