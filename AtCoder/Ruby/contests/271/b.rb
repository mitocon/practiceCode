n, q = gets.chomp.split(" ").map(&:to_i)
arrN = []
(0..(n - 1)).each do |l|
  arrN[l] = gets.split(" ").map(&:to_i)
end
arrQ = []
(0..(q - 1)).each do |l|
  arrQ[l] = gets.split(" ").map(&:to_i)
end

arrQ.each do |que|
  p arrN[(que[0]-1)][(que[1])]
end
