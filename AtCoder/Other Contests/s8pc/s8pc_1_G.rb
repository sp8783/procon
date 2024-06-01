n, m = gets.split.map(&:to_i)
dists = Array.new(n){Array.new(n, Float::INFINITY)}
times = Array.new(n){Array.new(n, Float::INFINITY)}
m.times do
  a, b, d, t = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  dists[a][b] = dists[b][a] = d
  times[a][b] = times[b][a] = t
end

dp = Array.new(1 << n){ Array.new(n) { [Float::INFINITY, 0] } }
dp[0][0] = [0, 1]

(0...(1 << n)).each do |s|
  (0...n).each do |v|
    (0...n).each do |u|
      next if v == u
      res = dp[s][v][0] + dists[v][u]
      next if (s >> u & 1) == 1 || res > times[v][u]
      if res < dp[s | 1 << u][u][0]
        dp[s | 1 << u][u] = [res, dp[s][v][1]]
      elsif res == dp[s | 1 << u][u][0]
        dp[s | 1 << u][u][1] += dp[s][v][1]
      end
    end
  end
end

ans = dp[-1][0]
puts ans[0] == Float::INFINITY ? "IMPOSSIBLE" : ans.join(" ")
