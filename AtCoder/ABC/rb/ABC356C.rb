n, m, k = gets.split.map(&:to_i)
lst = m.times.map do
  c, *x, r = gets.split
  c = c.to_i
  x = x.map(&:to_i)
  [c, x, r]
end

ans = 0
idx = 0
[0, 1].repeated_permutation(n) do |bits|
  cnt = 0
  m.times do |i|
    c, x , r = lst[i]
    tmp = 0
    x.each do |xi|
      tmp += 1 if bits[xi-1] == 1
    end
    if (k <= tmp && r == "o") || (k > tmp && r == "x")
      cnt += 1
    else
      break
    end
  end
  ans += 1 if cnt == m
end

puts ans
