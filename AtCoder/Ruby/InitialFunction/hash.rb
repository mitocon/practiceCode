a = [1, 2, 3, 3, 4, 3]
h = Hash.new(0)
a.each { |v| h.store(v, h[v] + 1) }

# h = { 3=>3, 2=>1, 1=>1, 4=>1 }
