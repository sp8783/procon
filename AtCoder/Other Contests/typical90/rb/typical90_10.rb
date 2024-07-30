n = gets.to_i
scores_1 = Array.new(n + 1, 0)
scores_2 = Array.new(n + 1, 0)

n.times do |i|
  c, p = gets.split.map(&:to_i)
  scores_1[i + 1] = scores_1[i] + (c == 1 ? p : 0)
  scores_2[i + 1] = scores_2[i] + (c == 2 ? p : 0)
end

q = gets.to_i
q.times do
  l, r = gets.split.map(&:to_i)
  puts "#{scores_1[r] - scores_1[l - 1]} #{scores_2[r] - scores_2[l - 1]}"
end
