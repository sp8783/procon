N, M = gets.split.map(&:to_i)
dist = Array.new(N){ Array.new(N, Float::INFINITY) }
N.times { |i| dist[i][i] = 0 }
M.times do
  a, b, t = gets.split.map(&:to_i)
  dist[a-1][b-1] = t
  dist[b-1][a-1] = t
end

N.times do |k|
  N.times do |i|
    N.times do |j|
      dist[i][j] = [dist[i][j], dist[i][k] + dist[k][j]].min
    end
  end
end

puts dist.map{ |d| d.max }.min
