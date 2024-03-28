# WA

ha, wa = gets.chomp.split(" ").map(&:to_i)
arrA = []
(0..(ha - 1)).each do |num|
  arrA[num] = gets.split(" ").map(&:to_i)
end

hb, wb = gets.chomp.split(" ").map(&:to_i)
arrB = []
(0..(hb - 1)).each do |num|
  arrB[num] = gets.split(" ").map(&:to_i)
end

# 何行消す？
eraseHnum = (ha - hb)
eraseCombisH = (1..ha).to_a.reverse.combination(eraseHnum).to_a
# 何列消す？
eraseWnum = (wa - wb)
eraseCombisW = (1..wa).to_a.reverse.combination(eraseWnum).to_a
# arrA [[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13, 14, 15], [16, 17, 18, 19, 20]]
eraseCombisH.each do |combiH|
  eraseCombisW.each do |combiW|
    copyA = new arrA.dup
    # p "combiH"
    # p combiH
    p "arrA"
    p arrA
    p "copyA"
    p copyA
    combiH.each do |row|
      # p "row"
      # p row
      copyA.delete_at(row)
    end
    combiW.each do |column|
      copyA.each do |row|
        row.delete_at(column)
      end
    end
    # p "copyA"
    # p copyA
  end
end
