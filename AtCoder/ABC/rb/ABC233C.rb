def solve(now, tmp, a_lst, x)
  cnt = 0
  if now == a_lst.size
    return tmp == x ? 1 : 0
  end
  a_lst[now].each do |a|
    cnt += solve(now + 1, tmp*a, a_lst, x)
  end
  return cnt
end

n, x = gets.split.map(&:to_i)

l_lst = []
a_lst = []
n.times do
  l, *a = gets.split.map(&:to_i)
  l_lst << l
  a_lst << a
end

puts solve(0, 1, a_lst, x)
