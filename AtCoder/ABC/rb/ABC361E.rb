n = gets.to_i
adj = Array.new(n) { [] }
all_dist = 0
(n-1).times do |i|
  a,b,c = gets.split.map(&:to_i)
  adj[a-1] << [b-1,c]
  adj[b-1] << [a-1,c]
  all_dist += c
end

queue = [[0, 0]]
max_dist = 0
farthest_node = 0
visited = Array.new(n, false)

while !queue.empty?
  node, dist = queue.shift
  visited[node] = true
  if dist > max_dist
    max_dist = dist
    farthest_node = node
  end
  adj[node].each do |(to, cost)|
    next if visited[to]
    queue << [to, dist + cost]
  end
end

queue = [[farthest_node, 0]]
max_dist = 0
other_farthest_node = farthest_node
visited = Array.new(n, false)


while !queue.empty?
  node, dist = queue.shift
  visited[node] = true
  if dist > max_dist
    max_dist = dist
    other_farthest_node = node
  end
  adj[node].each do |(to, cost)|
    next if visited[to]
    queue << [to, dist + cost]
  end
end

# p "#{farthest_node + 1} #{other_farthest_node + 1} #{max_dist}"

puts all_dist * 2 - max_dist
