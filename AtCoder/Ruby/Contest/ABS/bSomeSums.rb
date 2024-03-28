def someSums()
  n, a, b = gets.chomp.split(" ").map(&:to_i)
  sums = 0
  (1..n).each do |num|
    # digitsは各桁の値をバラバラにして配列に入れるメソッド
    # sumは配列の要素の和を出すメソッド
    digiSome = num.digits.sum
    if digiSome >= a && digiSome <= b
      sums += num
    end
  end
  puts sums
end

someSums()
