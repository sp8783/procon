n, k = gets.split.map(&:to_i)
taxi = n.times.map { gets.split.map(&:to_i) }
adj = Array.new(n) { [] }
k.times do
  a,b = gets.split.map { |x| x.to_i - 1 }
  adj[a] << b
  adj[b] << a
end

# 各町のタクシーの移動範囲を特定する
inf = Float::INFINITY
taxi_range = Array.new(n) { [] }
taxi.each_with_index do |t, i|
  cost, r = t
  dist = Array.new(n, inf)
  dist[i] = 0
  q = [i]
  while !q.empty?
    v = q.shift
    adj[v].each do |u|
      if dist[u] == inf
        dist[u] = dist[v] + 1
        q << u
      end
    end
  end
  taxi_range[i] = dist.map.with_index { |d, j| d <= r ? j : nil }.compact
end

# 最短コストを求める
dp = Array.new(n, inf)
dp[0] = 0
hq = [[0, 0]]

while !hq.empty?
  c, v = hq.shift
  next if dp[v] < c
  cost = taxi[v][0]
  taxi_range[v].each do |u|
    if dp[u] > dp[v] + cost
      dp[u] = dp[v] + cost
      hq << [dp[u], u] if u != n - 1

    end
  end
end

# p "dp: #{dp}"
puts dp[n - 1]
