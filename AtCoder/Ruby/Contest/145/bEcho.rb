def echo()
  n = gets.to_i
  s = gets
  if n % 2 == 1
    puts "No"
  else
    s1 = s.slice(0, n / 2)
    s2 = s.slice(n / 2, n / 2)
    if s1 == s2
      puts "Yes"
    else
      puts "No"
    end
  end
end

echo()
