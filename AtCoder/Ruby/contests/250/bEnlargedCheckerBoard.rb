def abc250b()
  arr = gets.split(" ")
  n = arr[0].to_i
  a = arr[1].to_i
  b = arr[2].to_i

  # 縦にfor文を回す。
  # 横向きに足していく
  (1..a * n).each do |elem_a|
    string = ""
    # 1行目を書く
    # a+1行目は逆転する
    (1..b * n).each do |elem_b|
      if (elem_a - 1) / a % 2 == 0
        if (elem_b - 1) / b % 2 == 0
          string += "."
        else
          string += "#"
        end
      else
        if (elem_b - 1) / b % 2 == 0
          string += "#"
        else
          string += "."
        end
      end
    end

    puts string
  end
end

abc250b()
