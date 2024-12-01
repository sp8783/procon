n = gets.to_i
adj = Array.new(n) { [] }

(n - 1).times do
  a, b = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  adj[a] << b
  adj[b] << a
end

child = Array.new(n, 0)
check = Array.new(n, false)

def dfs(v, adj, child, check)
  p = 1
  check[v] = true
  adj[v].each do |nv|
    next if check[nv]
    p += dfs(nv, adj, child, check)
  end
  child[v] = p
  p
end

dfs(0, adj, child, check)

ans = 0
n.times do |i|
  ans += child[i] * (n - child[i])
end

puts ans
