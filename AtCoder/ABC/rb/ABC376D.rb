# kaigionrails
n, m = gets.split.map(&:to_i)
adj = Array.new(n) { [] }
m.times do
  a, b = gets.split.map(&:to_i)
  adj[a-1] << b-1
end

dists = Array.new(n, Float::INFINITY)
dists[0] = 0
queue = [0]

while !queue.empty?
  pos = queue.shift
  adj[pos].each do |next_pos|
    if next_pos == 0
      puts dists[pos] + 1
      exit
    elsif dists[next_pos] > dists[pos] + 1
      dists[next_pos] = dists[pos] + 1
      queue << next_pos
    end
  end
end

puts -1
