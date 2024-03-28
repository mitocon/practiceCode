def nCrMod()
  n = 100
  r = 50
  mod = 10 ** 9 + 7
  numerator = ((n - r + 1)..n).inject { |result, item| result * item % mod }
  denominator = (1..r).inject { |result, item| result * item % mod }
  puts numerator * (denominator.pow((mod - 2), mod))
end

nCrMod()
