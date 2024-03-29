def ps()
  st = gets
  if big_and_small(st) && different(st)
    puts "Yes"
  else
    puts "No"
  end
end

def big_and_small(st)
  st.chars do |ch|
    if /\A[A-Z]+\z/.match?(ch)
      st.chars do |cha|
        if /\A[a-z]+\z/.match?(cha)
          return true
        end
      end
    end
  end
  return false
end

def different(st)
  list = []
  count = 0
  st.chars do |ch|
    count += 1
    list.push(ch)
  end
  list.uniq.each do |s|
    if list.count(s) > 1 || count <= 1
      return false
    end
  end
  return true
end

ps()
