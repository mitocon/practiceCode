k = gets.to_i
t = Time.local(2016, 7, 5, 21, 00, 00)
if (t + k * 60).min >= 10
  puts "#{(t + k * 60).hour}:#{(t + k * 60).min}"
else
  puts "#{(t + k * 60).hour}:0#{(t + k * 60).min}"
end
