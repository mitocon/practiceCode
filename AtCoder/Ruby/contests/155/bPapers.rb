def papers()
  n = gets.to_i
  as = gets.split(" ").map(&:to_i)
  flag = true
  as.each do |num|
    if num % 2 == 0
      if num % 3 != 0 && num % 5 != 0
        flag = false
        break
      end
    end
  end
  if flag
    puts "APPROVED"
  else
    puts "DENIED"
  end
end

papers()
