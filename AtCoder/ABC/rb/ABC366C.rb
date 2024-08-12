cnt_lst = Array.new(10**6 + 1, 0)
ans = 0

q = gets.to_i
q.times do
  query, x = gets.split.map(&:to_i)
  case query
    when 1
      cnt_lst[x] += 1
      ans += 1 if cnt_lst[x] == 1
    when 2
      cnt_lst[x] -= 1
      ans -= 1 if cnt_lst[x] == 0
    when 3
      puts ans
  end
end
