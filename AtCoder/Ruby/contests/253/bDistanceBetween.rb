def db()
  h, w = gets.chomp.split(" ").map(&:to_i)
  x1 = 0
  y1 = 0
  x2 = 0
  y2 = 0
  xx = 0
  yy = 0
  arr = []
  (0..(h - 1)).each do |l|
    str = gets
    if str.scan("o").length == 2
      arr = str.split("o")
      xx = arr[1].length + 1
    elsif str.scan("o").length == 1
      if str.include?("o")
        if x1 == 0
          x1 = search(str)
          y1 = l
        else
          x2 = search(str)
          y2 = l
          xx = (x1 - x2).to_i.abs
          yy = (y1 - y2).to_i.abs
        end
      end
    end
  end
  puts (xx + yy)
end

def search(str)
  return (str.index("o") + 1)
end

db()
