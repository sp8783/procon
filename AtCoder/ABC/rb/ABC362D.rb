def dijkstra(n, adj, a, start)
  inf = Float::INFINITY
  dp = Array.new(n + 1, inf)
  dp[start] = a[start - 1]
  hq = [[a[start - 1], start]]

  until hq.empty?
    hq.sort_by! { |x| x[0] }
    cost, v = hq.shift

    adj[v].each do |u, c|
      new_cost = cost + a[u - 1] + c
      if dp[u] > new_cost
        dp[u] = new_cost
        hq << [new_cost, u]
      end
    end
  end

  dp
end

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
edges = Array.new(n + 1) { [] }

m.times do
  u, v, b = gets.split.map(&:to_i)
  edges[u] << [v, b]
  edges[v] << [u, b]
end

dists = dijkstra(n, edges, a, 1)
puts dists[2..n].join(" ")
