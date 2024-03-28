# 大文字小文字の判断
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

big_and_small("ARUKOLU")
big_and_small("Afdawg")
big_and_small("gajwojA")
big_and_small("A")
big_and_small("a")
big_and_small("AA")
big_and_small("aa")
big_and_small("AAA")
