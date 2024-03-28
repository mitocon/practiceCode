#標準入力から読み込んで配列を作る
line = gets.chomp.split(" ")

#重複を省いた配列から要素を取り出し、元の配列について要素別にカウント
line.uniq.each do |x|
  puts "#{x}=>#{line.count(x)}"
end
