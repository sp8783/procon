n, m = gets.split.map(&:to_i)
edge = Array.new(n) { [] }
m.times do
  u, v, w = gets.split.map(&:to_i)
  edge[u - 1] << [v - 1, w]
  edge[v - 1] << [u - 1, -w]
end

x = Array.new(n, 0)
calced = Array.new(n, false)

n.times do |i|
  next if calced[i]
  q = [i]
  calced[i] = true
  while !q.empty?
    u = q.shift
    edge[u].each do |v, w|
      next if calced[v]
      x[v] = x[u] + w
      calced[v] = true
      q << v
    end
  end
end

if x.min < -1 * (10**18)
  diff = (-1 * (10**18)) - x.min
  x.map! { |xi| xi + diff }
elsif x.max > 10**18
  diff = x.max - 10**18
  x.map! { |xi| xi - diff }
end

puts x.join(" ")
