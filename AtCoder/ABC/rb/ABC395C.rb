n = gets.to_i
arr = gets.split.map(&:to_i)

idx_lst = [-1]*(10**6+1)
ans = n+1
arr.each_with_index do |a, i|
  if idx_lst[a] != -1
    ans = [ans, i - idx_lst[a] + 1].min
  end
  idx_lst[a] = i
end

puts ans == n+1 ? -1 : ans
