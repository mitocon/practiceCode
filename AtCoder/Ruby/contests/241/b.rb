n, m = gets.chomp.split(" ").map(&:to_i)
arrA = gets.split(" ").map(&:to_i)
arrB = gets.split(" ").map(&:to_i)

ans = "Yes"

arrB.each do |y|
  begin
    arrA.delete_at(arrA.index(y))
  rescue TypeError => e
    ans = "No"
  end
end

puts ans
