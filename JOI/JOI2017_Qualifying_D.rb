n, m = gets.split.map(&:to_i)
csum = Array.new(m) {Array.new(n + 1, 0)}
n.times do |i|
  k = gets.to_i - 1
  csum[k][i + 1] = 1
end
m.times do |i|
  (1..n).each do |j|
    csum[i][j] += csum[i][j - 1]
  end
end
csum_max = csum.transpose[-1]

dp = Array.new(1 << m, 1 << 60)
dp[0] = 0

(1 << m).times do |s|
  tot = 0
  m.times do |i|
    if s & (1 << i) > 0
      tot += csum_max[i]
    end
  end
  m.times do |i|
    if s & (1 << i) == 0
      dp[s | (1 << i)] = [dp[s | (1 << i)], dp[s] + csum_max[i] + csum[i][tot] - csum[i][tot + csum_max[i]]].min
    end
  end
end

puts dp[-1]
