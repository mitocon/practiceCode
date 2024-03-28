n = gets.to_i
list = []
(0..(n - 1)).each do |_|
  list.push(gets.chomp)
end

hash = {}
list.each do |s|
  if !hash.key?(s)
    hash.store(s, 1)
    puts s
  else
    puts s + "(#{hash[s]})"
    hash[s] += 1
  end
end
