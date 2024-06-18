n, m = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort
B = gets.split.map(&:to_i).sort
# p "A: #{A}"
# p "B: #{B}"

ans = 0

idx = 0
B.each do |b|
  while idx < n && A[idx] < b
    idx += 1
  end
  if idx == n
    ans = -1
    break
  else
    ans += A[idx]
    idx += 1
  end
end

puts ans
