# AC
n, m = gets.chomp.split(" ").map(&:to_i)
arr = []
(0..(m - 1)).each do |l|
  arr[l] = gets.split(" ").map(&:to_i)
  arr[l].shift(1)
end

not_together_members_1st = [*1..n] - (arr[0])
ntm_lists = []
not_together_members_1st.each do |num|
  [*1..n].each do |num2|
    if num != num2
      ntm_lists.push([num, num2])
    end
  end
end

ans = "Yes"
flag = false
ntm_lists.each do |ntm_list|
  flag = false
  arr.each do |arr_list|
    if arr_list == arr[0]
      next
    end
    if ntm_list & arr_list == ntm_list
      flag = true
      next
    end
  end
  if flag == false
    ans = "No"
    break
  end
end

puts ans
