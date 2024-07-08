n = gets.to_i
adj = Array.new(n) { [] }
(n-1).times do
  a, b = gets.split.map{|x| x.to_i - 1}
  adj[a] << b
  adj[b] << a
end

queue = [[0, 0]]
visited = Array.new(n, false)
max_cnt = 0
edge_start = 0

while !queue.empty?
  v, cnt = queue.shift
  visited[v] = true
  if cnt > max_cnt
    max_cnt = cnt
    edge_start = v
  end
  adj[v].each do |u|
    next if visited[u]
    queue.push([u, cnt + 1])
  end
end

queue = [[edge_start, 0]]
visited = Array.new(n, false)
max_cnt = 0

while !queue.empty?
  v, cnt = queue.shift
  visited[v] = true
  max_cnt = [max_cnt, cnt].max
  
  adj[v].each do |u|
    next if visited[u]
    queue.push([u, cnt + 1])
  end
end

puts max_cnt + 1
