N = gets.to_i
dist = N.times.map{ gets.split.map(&:to_i) }
N.times { |i| dist[i][i] = Float::INFINITY }

ans = 0
(0...N).to_a.combination(2).each do |i, j|
  min_dist = Float::INFINITY
  N.times do |k|
    min_dist = [min_dist, dist[i][k] + dist[k][j]].min
  end
  if dist[i][j] > min_dist
    puts -1
    exit
  elsif dist[i][j] < min_dist
    ans += dist[i][j]
  end
end

puts ans
