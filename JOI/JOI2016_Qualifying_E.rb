n, m, k, s = gets.split.map(&:to_i)
P, Q = gets.split.map(&:to_i)

zombie_towns = Set.new
k.times do
  c = gets.to_i - 1
  zombie_towns << c
end

adj = Array.new(n) { [] }
m.times do
  a, b = gets.split.map { |x| x.to_i - 1 }
  adj[a] << b
  adj[b] << a
end

# 危険な街を見つける
inf = Float::INFINITY
check = Array.new(n, inf)
q = []
zombie_towns.each do |z|
  q << z
  check[z] = 0
end
while !q.empty?
  v = q.shift
  adj[v].each do |u|
    if check[u] == inf
      check[u] = check[v] + 1
      q << u
    end
  end
end
danger_towns = Set.new
n.times do |i|
  danger_towns << i if check[i] <= s
end

# 最短距離を求める
dp = Array.new(n, inf)
dp[0] = 0
hq = [[0, 0]]
ans = inf

while !hq.empty?
  v = hq.shift[1]
  # p "v: #{v}"
  next if zombie_towns.include?(v)

  adj[v].each do |u|
    # p "u: #{u}"
    cost = danger_towns.include?(u) ? Q : P 
    if dp[u] > dp[v] + cost
      dp[u] = dp[v] + cost
      hq << [dp[u], u]
    end
    if u == n - 1
      ans = [ans, dp[v]].min
      break
    end
    # p "dp: #{dp}"
    # p "ans: #{ans}"
  end
end

# p "adj: #{adj}"
# p "zombie_towns: #{zombie_towns}"
# p "danger_towns: #{danger_towns}"
# p "dp: #{dp}"
puts ans
