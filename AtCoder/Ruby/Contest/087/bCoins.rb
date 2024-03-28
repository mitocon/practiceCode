def coins()
  a = gets.to_i
  b = gets.to_i
  c = gets.to_i
  x = gets.to_i
  count = 0
  aMax = x / 500
  if aMax > a
    aMax = a
  end

  (0..aMax).each do |aCount|
    # 500 × a を取り除いた金額を、100 × b　で表せるか
    sa = x - 500 * aCount
    bMax = sa / 100
    if bMax > b
      bMax = b
    end

    (0..bMax).each do |bCount|
      sasa = sa - 100 * bCount
      cCalc = sasa / 50
      if cCalc <= c
        count += 1
      end
    end
  end
  puts count
end

coins()
