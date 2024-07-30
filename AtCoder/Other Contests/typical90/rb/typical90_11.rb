n = gets.to_i
works = Array.new(n) { gets.split.map(&:to_i) }

works.sort_by!(&:first)
d_max = works[-1][0]
dp = Array.new(n + 1) { Array.new(d_max + 1, 0) }

n.times do |i|
  d, c, s = works[i]
  dp[i + 1] = dp[i].dup
  if d >= c
    d.downto(c) do |j|
      dp[i + 1][j] = [dp[i][j], dp[i][j - c] + s].max
    end
  end
end

puts dp[n].max
