n, q = gets.split.map(&:to_i)
adj = Array.new(n) { [] }
(n-1).times.map {
  a, b = gets.split.map(&:to_i)
  adj[a-1] << b-1
  adj[b-1] << a-1
}

def dfs(adj, ans, v, visited)
  visited[v] = true
  adj[v].each do |nv|
    next if visited[nv]
    ans[nv] += ans[v]
    dfs(adj, ans, nv, visited)
  end
end

ans = Array.new(n, 0)
q.times.each do
  p, x = gets.split.map(&:to_i)
  ans[p-1] += x
end

visited = Array.new(n, false)
dfs(adj, ans, 0, visited)
puts ans.join(' ')
