V, E = gets.split.map(&:to_i)
dist = Array.new(V){ Array.new(V, Float::INFINITY) }
V.times{ |i| dist[i][i] = 0 }
E.times do
  s, t, d = gets.split.map(&:to_i)
  dist[s][t] = d
end

V.times do |k|
  V.times do |i|
    V.times do |j|
      dist[i][j] = [dist[i][j], dist[i][k] + dist[k][j]].min
    end
  end
end

if V.times.any?{ |i| dist[i][i] < 0 }
  puts 'NEGATIVE CYCLE'
else
  V.times do |i|
    puts dist[i].map{ |d| d == Float::INFINITY ? 'INF' : d }.join(' ')
  end
end
