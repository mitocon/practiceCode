a, b, wkg = gets.chomp.split(" ").map(&:to_i)
wg = wkg * 1000
min = 0
max = 0

flag = true

# カウンタ
n = 1

# wg/nが、最大の重さBより小さくなるnが、最小個数minになる。
while wg.to_f / n.to_f > b
  n += 1
end
min = n

# しかし、wg/nが最小の重さAより小さくなってしまったら、UNSATISFIABLEである。
# そのためのflagをfalseにしておく。
if wg.to_f / n.to_f < a
  flag = false
end

# wg/nが最小の重さAより小さくなるnが、"最大個数maxより1個多い数"になる。
while wg.to_f / n.to_f >= a
  n += 1
end
# 1個多いので1引く。
max = n - 1

if flag
  puts (min.to_s) + " " + (max.to_s)
else
  puts "UNSATISFIABLE"
end
