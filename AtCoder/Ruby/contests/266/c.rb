a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)
d = gets.split(" ").map(&:to_i)

# (p0x, p0y),(p1x, p1y),(p2x, p2y)の三角形
# (px, py)が判定したい点
def judgeDent(a, b, c, d)
  px = a[0]
  py = a[1]
  p0x = b[0]
  p0y = b[1]
  p1x = c[0]
  p1y = c[1]
  p2x = d[0]
  p2y = d[1]
  area = 0.5 * (-p1y * p2x + p0y * (-p1x + p2x) + p0x * (p1y - p2y) + p1x * p2y)
  s = 1 / (2 * area) * (p0y * p2x - p0x * p2y + (p2y - p0y) * px + (p0x - p2x) * py)
  t = 1 / (2 * area) * (p0x * p1y - p0y * p1x + (p0y - p1y) * px + (p1x - p0x) * py)
  ((0 < s && s < 1) && (0 < t && t < 1) && (0 < 1 - s - t && 1 - s - t < 1))
end

if judgeDent(a, b, c, d) || judgeDent(b, c, d, a) || judgeDent(c, d, a, b) || judgeDent(d, a, b, c)
  puts "No"
else
  puts "Yes"
end
