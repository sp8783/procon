n = gets.to_i
adj = Array.new(n){[]}
n.times do |i|
  u, k, *v = gets.split.map(&:to_i)
  adj[u - 1] = v.map{|x| x - 1}
end

visited = Array.new(n, false)
ans = Array.new(n, -1)

visited[0] = true
ans[0] = 0
queue = [[0, 0]]

while !queue.empty?
  v, dist = queue.shift
  adj[v].each do |nv|
    next if visited[nv]
    visited[nv] = true
    ans[nv] = ans[nv] == -1 ? dist + 1 : [dist + 1, ans[nv]].min
    queue << [nv, dist + 1]
  end
end

puts ans.map.with_index{|x, i| "#{i + 1} #{x}"}.join("\n")
