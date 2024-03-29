def cardGame()
  n = gets.to_i

  # 数値の配列arrを取得。 sort.reverseで大きいもの順に並べ替え
  arr = gets.split(" ").map { |n| n.to_i }.sort.reverse

  sum = 0

  # アリスが取る予定の、配列の偶数番目(arr[0], arr[2], arr[4]...)は要素を＋
  # ボブが取る予定の、配列の奇数番目(arr[1], arr[3], arr[5]...)は要素を＋
  (0..(arr.length - 1)).each do |order|
    if order % 2 == 0
      sum += arr[order]
    else
      sum -= arr[order]
    end
  end
  puts sum
end

cardGame()
