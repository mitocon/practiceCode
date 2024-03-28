# 未完

def main()
  n = gets
  arr = gets.split(" ")
  list = []
  arr.each do |num|
    num = num.to_i
    list.push(num)
  end
  count = 0
  if list.length < 3
  else
    (0..(list.length - 3)).each do |i|
      puts ">>>>>>>>>>>>"
      puts i
      ((i + 1)..(list.length - 2)).each do |j|
        puts ">>>>>>"
        puts j
        ((j + 1)..(list.length - 1)).each do |k|
          puts ">"
          puts k
          if list[i] * list[j] == list[k]
            p list[i], list[j], list[k]
            count += 1
          end
          if list[j] * list[k] == list[i]
            p list[i], list[j], list[k]
            count += 1
          end
          if list[k] * list[i] == list[j]
            p list[i], list[j], list[k]
            count += 1
          end
        end
      end
    end
  end
  puts count
end

main()
