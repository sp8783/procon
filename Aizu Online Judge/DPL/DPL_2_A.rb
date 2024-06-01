V, E = gets.split.map(&:to_i)
cost = Array.new(V){Array.new(V, Float::INFINITY)}
E.times do 
  s, t, d = gets.split.map(&:to_i)
  cost[s][t] = d
end

dp = Array.new(1 << V){Array.new(V, -1)}

def dfs(s, v, dp, cost)
  return 0 if s == (1 << V) - 1 && v == 0
  return dp[s][v] if dp[s][v] != -1
  res = Float::INFINITY
  V.times do |u|
    res = [res, dfs(s | (1 << u), u, dp, cost) + cost[v][u]].min if (s & (1 << u)) == 0
  end
  dp[s][v] = res
  return res
end

ans = dfs(0, 0, dp, cost)
puts ans == Float::INFINITY ? -1 : ans
