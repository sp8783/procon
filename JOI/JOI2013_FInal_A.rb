n = gets.split.map(&:to_i)
rights = gets.split.map(&:to_i)

lst = []
cnt = 1
rights.each_cons(2) do |l, r|
  if l == r
    lst << cnt
    cnt = 1
  else
    cnt += 1
  end
end
lst << cnt

if lst.size <= 2
  puts lst.sum
else
  puts lst.each_cons(3).map(&:sum).max
end
