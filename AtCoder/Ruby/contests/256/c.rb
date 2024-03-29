h1, h2, h3, w1, w2, w3 = gets.chomp.split(" ").map(&:to_i)
ans = 0

# a b c h1
# d e f h2
# g h i h3
# w1w2w3
(1..28).each do |a|
  (1..28).each do |b|
    (1..28).each do |d|
      (1..28).each do |e|
        c = h1 - a - b
        f = h2 - d - e
        g = w1 - a - d
        h = w2 - b - e
        ih = h3 - g - h
        iw = w3 - c - f
        if 1 <= c && 1 <= f && 1 <= g && 1 <= h && 1 <= ih && (ih == iw)
          ans += 1
        end
      end
    end
  end
end

puts ans
