n, m = gets.split.map(&:to_i)
arr = Array.new(n+1) { [false]*(n+1) }
m.times do
  a, b = gets.split.map(&:to_i)
  arr[a][b] = true
  arr[b][a] = true
end

ans = 0
[*1..n].combination(3).to_a.each do |i,j,k|
  ans += 1 if arr[i][j] && arr[j][k] && arr[k][i]
end

puts ans
