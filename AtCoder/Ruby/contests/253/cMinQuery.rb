def minQuery() #未完
  s = []
  ans = []
  q = gets.to_i
  (0..(q - 1)).each do |qNum|
    a = gets.split(" ")  # push
    if a[0].to_i == 1
      s.push(a[1].to_i)
    elsif a[0].to_i == 2 # delete
      x = a[1].to_i
      c = a[2].to_i
      befLen = s.length
      # sからxをc回取り除く。ただし、リストの最後まで行ったら終了
      s.delete(x)
      afLen = s.length
      if (befLen - afLen) > c
        (1..((befLen - afLen) - c)).each do |n|
          s.push(x)
        end
      end
    else # puts
      ans.push(s.max - s.min)
    end
  end
  puts ans
end

minQuery()
