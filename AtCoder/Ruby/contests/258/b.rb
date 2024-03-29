n = gets.to_i
line = []
(0..(n - 1)).each do |a|
  line[a] = gets.chomp.chars.map(&:to_i)
end
x = line.flatten.max
startLists = []
# a縦
(0..(n - 1)).each do |a|
  # b横
  (0..(n - 1)).each do |b|
    if line[a][b] == x
      startLists.push([a, b])
    end
  end
end

ansList = []

#右
startLists.each do |sL|
  a = sL[0]
  b = sL[1]
  str = ""
  (b..(b + n - 1)).each do |bb|
    if bb > (n - 1)
      str += line[a][bb - n].to_s
    else
      str += line[a][bb].to_s
    end
  end
  ansList.push(str.to_i)
end

# 左
startLists.each do |sL|
  a = sL[0]
  b = sL[1]
  str = ""
  (0..(n - 1)).each do |nn|
    if b - nn < 0
      str += line[a][b - nn + n].to_s
    else
      str += line[a][b - nn].to_s
    end
  end
  ansList.push(str.to_i)
end

# 下
startLists.each do |sL|
  a = sL[0]
  b = sL[1]
  str = ""
  (0..(n - 1)).each do |nn|
    if a + nn > n - 1
      str += line[a + nn - n][b].to_s
    else
      str += line[a + nn][b].to_s
    end
  end
  ansList.push(str.to_i)
end

# 上
startLists.each do |sL|
  a = sL[0]
  b = sL[1]
  str = ""
  (0..(n - 1)).each do |nn|
    if a - nn < 0
      str += line[a - nn + n][b].to_s
    else
      str += line[a - nn][b].to_s
    end
  end
  ansList.push(str.to_i)
end

# 右上
startLists.each do |sL|
  a = sL[0]
  b = sL[1]
  str = ""
  (0..(n - 1)).each do |nn|
    if b + nn > n - 1
      if a - nn < 0
        str += line[a - nn + n][b + nn - n].to_s
      else
        str += line[a - nn][b + nn - n].to_s
      end
    else
      if a - nn < 0
        str += line[a - nn + n][b + nn].to_s
      else
        str += line[a - nn][b + nn].to_s
      end
    end
  end
  ansList.push(str.to_i)
end

# 右下
startLists.each do |sL|
  a = sL[0]
  b = sL[1]
  str = ""
  (0..(n - 1)).each do |nn|
    if b + nn > n - 1
      if a + nn > n - 1
        str += line[a + nn - n][b + nn - n].to_s
      else
        str += line[a + nn][b + nn - n].to_s
      end
    else
      if a - nn < 0
        str += line[a + nn - n][b + nn].to_s
      else
        str += line[a + nn - n][b + nn].to_s
      end
    end
  end
  ansList.push(str.to_i)
end

#左上
startLists.each do |sL|
  a = sL[0]
  b = sL[1]
  str = ""

  (0..(n - 1)).each do |nn|
    if b - nn < 0
      if a - nn < 0
        str += line[a - nn + n][b - nn + n].to_s
      else
        str += line[a - nn][b - nn + n].to_s
      end
    else
      if a - nn < 0
        str += line[a - nn + n][b - nn].to_s
      else
        str += line[a - nn][b - nn].to_s
      end
    end
  end
  ansList.push(str.to_i)
end

#左下

startLists.each do |sL|
  a = sL[0]
  b = sL[1]
  str = ""
  (0..(n - 1)).each do |nn|
    if b - nn < 0
      if a + nn > n - 1
        str += line[a + nn - n][b - nn + n].to_s
      else
        str += line[a + nn][b - nn + n].to_s
      end
    else
      if a + nn > n - 1
        str += line[a + nn - n][b - nn].to_s
      else
        str += line[a + nn][b - nn].to_s
      end
    end
  end
  ansList.push(str.to_i)
end

puts ansList.max
