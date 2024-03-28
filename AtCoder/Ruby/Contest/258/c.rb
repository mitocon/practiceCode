def addToEnd(str, x)
  last = str.slice(str.length - x - 1, x)
  return last + str.slice(0, (str.length) - x - 1)
end

def pri(str, x, list)
  list.push(str.slice(x - 1))
end

n, q = gets.chomp.split(" ").map(&:to_i)
s = gets
list = []
(1..q).each do |que|
  t, x = gets.chomp.split(" ").map(&:to_i)
  if t == 1
    s = addToEnd(s, x)
  else
    pri(s, x, list)
  end
end
puts list
