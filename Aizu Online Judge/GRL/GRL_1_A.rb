V, E, r = gets.split.map(&:to_i)
adj = Array.new(V) { [] }
E.times do
  s, t, d = gets.split.map(&:to_i)
  adj[s] << [t, d]
end

inf = Float::INFINITY
dp = Array.new(V, inf)
dp[r] = 0
hq = [[0, r]]

while !hq.empty?
  v = hq.shift[1]
  adj[v].each do |u, c|
    if dp[u] > dp[v] + c
      dp[u] = dp[v] + c
      hq << [dp[u], u]
    end
  end
end

V.times do |i|
  dp[i] == inf ? puts('INF') : puts(dp[i])
end
