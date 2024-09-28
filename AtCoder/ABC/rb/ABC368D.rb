n, k = gets.chomp.split.map(&:to_i)
edges = Array.new(n){{}}
(n-1).times{
  a, b = gets.chomp.split.map{|v| v.to_i - 1}
  edges[a][b] = true
  edges[b][a] = true
}
hsh = {}
gets.chomp.split.map{|v| v.to_i - 1}.each{|v| hsh[v] = true}

tmp = []
edges.each_with_index{|h, i| tmp << i if h.length == 1 && !hsh[i]}
idx = 0
while idx < tmp.length
  from = tmp[idx]
  idx += 1
  edges[from].each_key{|to|
    edges[to].delete(from)
    tmp << to if edges[to].length == 1 && !hsh[to]
  }
end
puts n - tmp.length
