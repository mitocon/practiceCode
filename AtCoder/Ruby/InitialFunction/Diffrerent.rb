# 1文字の場合はfalse

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

different("dA")
