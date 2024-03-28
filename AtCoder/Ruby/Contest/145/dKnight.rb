def knights()
  arr = gets.split(" ")
  x = arr[0].to_i
  y = arr[1].to_i

  if (x + y) % 3 != 0
    puts 0
  else
    # nCrMod
    n = (x + y) / 3
    r = x - n
    if r < 0 || y - n < 0
      puts 0
    elsif r == 0
      puts 1
    else
      mod = 10 ** 9 + 7
      numerator = ((n - r + 1)..n).inject { |result, item| result * item % mod }
      denominator = (1..r).inject { |result, item| result * item % mod }
      puts numerator * (denominator.pow((mod - 2), mod)) % mod
    end
  end
end

knights()
