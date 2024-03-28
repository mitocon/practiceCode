def primitive_pythagoras(k)
  xs = []
  m = 2
  while m * m <= k / 2
    (1..m).each do |n|
      if 2 * m * (m + n) > k
        break
      end
      if (m - n) % 2 != 0 and m.gcd(n) == 1
        a = m * m - n * n
        b = 2 * m * n
        c = m * m + n * n
        if a < b
          list = [a, b, c]
          if a * b / 2 <= 6000
            xs.push(list)
          end
        else
          list = [b, a, c]
          if a * b / 2 <= 6000
            xs.push(list)
          end
        end
      end
    end
    m += 1
  end
  return xs
end

print primitive_pythagoras(10000)
puts primitive_pythagoras(10000).length
