n = gets.to_i
a = gets.split.map(&:to_i)

lst = a.map.with_index { |ai, idx| ai - idx - 1 }.sort
if n%2 == 0
  b = (lst[n/2] + lst[n/2-1]) / 2
else
  b = lst[n/2]
end

ans = lst.sum { |ai| (ai - b).abs }
puts ans
