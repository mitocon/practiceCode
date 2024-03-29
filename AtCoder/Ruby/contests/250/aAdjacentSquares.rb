def abc250a()
  arr = gets.split(" ")
  h = arr[0].to_i
  w = arr[1].to_i
  arr2 = gets.split(" ")
  r = arr2[0].to_i
  c = arr2[1].to_i

  count = 0
  if h != 1
    if r == 1 || r == h
      count += 1
    else
      count += 2
    end
  end
  if w != 1
    if c == 1 || c == w
      count += 1
    else
      count += 2
    end
  end
  puts count
end

abc250a()
