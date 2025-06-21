n, m = gets.split.map(&:to_i)
edges = Array.new(n + 1) { [] }

m.times do
  a, b = gets.split.map(&:to_i)
  edges[a] << b
  edges[b] << a
end

if m != n
  puts "No"
  exit
end

if (1..n).any? { |i| edges[i].size != 2 }
  puts "No"
  exit
end

visited = Array.new(n + 1, false)

def dfs(v, edges, visited)
  visited[v] = true
  edges[v].each do |u|
    dfs(u, edges, visited) unless visited[u]
  end
end

dfs(1, edges, visited)

if (1..n).all? { |i| visited[i] }
  puts "Yes"
else
  puts "No"
end
