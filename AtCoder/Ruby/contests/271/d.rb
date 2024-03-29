n, s = gets.chomp.split(" ").map(&:to_i)
arr = []
arrA = []
arrAns = Array.new(n, "H")
(0..(n - 1)).each do |l|
  arr[l] = gets.split(" ").map(&:to_i)
  arrA.push(arr[l][1]-arr[l][0])
  s = s - arr[l][0]
end

(1..(arrA.length)).each do |num|
  arrBs = arrA.combination(num).to_a
  arrBs.each do |arrB|
    if arrB.sum == s
      arrB.each do |b|
        arrA.each_index.select{|i| arrA[i] == b}.each do |flag|
          if arrAns[flag] == "H"
            arrAns[flag] == "T"
            next
          end
        end
        next
      end
    end
  end
end
puts arrAns
