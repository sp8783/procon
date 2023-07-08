def dijkstra(s)
  d = [10 ** 9] * (N1+N2-1)
  d[s] = 0
  nex = [s]
  until nex.empty?
    from = nex.shift
    G[from].each do |to, cost|
      next if d[to] <= d[from] + cost
      d[to] = d[from] + cost
      i = nex.bsearch_index {|x| d[x] > d[to] } || nex.size
      nex.insert(i, to)
    end
  end
  d
end

N1, N2, m = gets.chomp.split.map(&:to_i)
G = Array.new(N1+N2){[]}
m.times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  G[a-1] << [b-1, 1]
  G[b-1] << [a-1, 1]
end
d1 = dijkstra(0)
d2 = dijkstra(N1+N2-1)
puts (d1 - [10**9]).max + (d2 - [10**9]).max + 1
