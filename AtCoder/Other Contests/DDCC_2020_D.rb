M = gets.to_i

ans = -1
S = 0

M.times do
  d, c = gets.split.map(&:to_i)
  S += c * d
  ans += c
end

ans += (S - 1) / 9
puts ans.to_i
