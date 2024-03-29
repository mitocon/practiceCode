def lightUp()
  n, k = gets.chomp.split(" ").map(&:to_i)
  a = []
  a = gets.split(" ").map(&:to_i)

  lights = []
  nlights = []
  list = []
  (0..(n - 1)).each do |i|
    list = gets.split(" ").map(&:to_i)
    if a.include?(i + 1)
      lights.push(list)
    else
      nlights.push(list)
    end
  end

  d = 0
  dList = []
  nlights.each do |nxy|
    dList = []
    lights.each do |lxy|
      (lxy[0] - nxy[0]) ** 2 + (lxy[1] - nxy[1]) ** 2
      dList.push((lxy[0] - nxy[0]) ** 2 + (lxy[1] - nxy[1]) ** 2)
    end
    if dList.min > d
      d = dList.min
    end
  end
  puts Math.sqrt(d)
end

lightUp()
