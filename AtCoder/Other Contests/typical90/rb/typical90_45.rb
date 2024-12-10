n, k = gets.split.map(&:to_i)
points = n.times.map { gets.split.map(&:to_i) }
dists = Array.new(n) { Array.new(n, 0) }
[*0 ... N].combination(2) do |i, j|
  xi, yi = points[i]
  xj, yj = points[j]
  dists[i][j] = dists[j][i] = (xi - xj) ** 2 + (yi - yj) ** 2
end

costs = [0] * (1 << N)
1.upto((1 << N) - 1) do |bit|
  n.times do |i|
    next if bit[i].zero?
    (i + 1).upto(N - 1) do |j|
      next if bit[j].zero?
      costs[bit] = [costs[bit], dists[i][j]].max
    end
  end
end

# bitDP
dp = Array.new(K + 1) { [Float::INFINITY] * (1 << N) }
dp[0][0] = 0
1.upto(k) do |i|
  1.upto((1 << n) - 1) do |bit|
    bit2 = bit
    until bit2.zero?
      dp[i][bit] = [dp[i][bit], [dp[i - 1][bit - bit2], costs[bit2]].max].min
      bit2 = (bit2 - 1) & bit
    end
  end
end
