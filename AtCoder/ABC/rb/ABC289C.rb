n, m = gets.split.map(&:to_i)
C = m.times.map do
  c = gets.to_i
  gets.split.map(&:to_i)
end

ans = 0
1.upto(m) do |i|
  C.combination(i).each do |c|
    ans += 1 if c.inject(&:|).length == n
  end
end
puts ans
