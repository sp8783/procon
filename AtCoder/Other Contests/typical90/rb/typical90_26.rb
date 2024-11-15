n = gets.to_i
adj = Array.new(n) { [] }
(n - 1).times do
  a, b = gets.split.map(&:to_i)
  adj[a - 1] << b - 1
  adj[b - 1] << a - 1
end

group = Array.new(n) { -1 } # 0: A, 1: B, -1: 未訪問
group[0] = 0
queue = [0]

while !queue.empty?
  u = queue.shift
  adj[u].each do |v|
    next if group[v] != -1
    group[v] = 1 - group[u]
    queue << v
  end
end

group_0 = []
group_1 = []
group.each_with_index do |g, i|
  if g == 0
    group_0 << i+1
  else
    group_1 << i+1
  end
end
if group_0.size >= group_1.size
  puts group_0[0, n/2].join(' ')
else
  puts group_1[0, n/2].join(' ')
end
