def practicalCom()
  n = gets.to_i
  list = [1]
  anslist = [1, 1]
  if n == 1
    puts 1
  elsif n == 2
    puts "1"
    puts "1 1"
  else
    puts "1"
    puts "1 1"
    (3..n).each do |num|
      list = anslist.each { |item| item }
      anslist = []
      (0..list.length).each do |lnum|
        if lnum == 0 || lnum == list.length
          anslist.push(1)
        else
          anslist.push(list[lnum - 1] + list[lnum])
        end
      end
      puts anslist.join(" ")
    end
  end
end

practicalCom()
