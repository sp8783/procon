def dijkstra(n, adj, start)
  inf = Float::INFINITY
  dp = Array.new(n, inf)
  dp[start] = 0
  hq = [[0, start]]

  while !hq.empty?
    v = hq.shift[1]
    adj[v].each do |u, c|
      if dp[u] > dp[v] + c
        dp[u] = dp[v] + c
        hq << [dp[u], u]
      end
    end
  end
  dp
end

n, m = gets.split.map(&:to_i)
adj = Array.new(n) { [] }
m.times do
  a, b, c = gets.split.map(&:to_i)
  adj[a - 1] << [b - 1, c]
  adj[b - 1] << [a - 1, c]
end

first_start = dijkstra(n, adj, 0)
last_start = dijkstra(n, adj, n - 1)

n.times do |i|
  puts first_start[i] + last_start[i]
end
