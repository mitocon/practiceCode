mod = 998244353
n, m, k = gets.split.map(&:to_i)
dp = Array.new(n + 1) { Array.new(k + 1, 0) }
dp[0][0] = 1
(0..(n - 1)).each do |i|
  (0..k).each do |j|
    (1..m).each do |a|
      if j + a <= k
        dp[i + 1][j + a] += dp[i][j] % mod
      end
    end
  end
end
puts dp[n].sum % mod