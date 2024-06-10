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

n, k = gets.split.map(&:to_i)
adj = Array.new(n) { [] }
inf = Float::INFINITY

k.times do
  lst = gets.split.map(&:to_i)
  if lst[0] == 0
    s, t = lst[1]-1, lst[2]-1
    dp = dijkstra(n, adj, s)
    puts dp[t] == inf ? -1 : dp[t]
  else
    s, t, d = lst[1]-1, lst[2]-1, lst[3]
    adj[s] << [t, d]
    adj[t] << [s, d]
  end
end
