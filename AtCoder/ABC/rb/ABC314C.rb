n, m = gets.split.map(&:to_i)
s = gets.chomp
colors = gets.split.map(&:to_i)

idxs = Hash.new
cnts = Hash.new
colors.each_with_index do |c, i|
  idxs[c] ||= []
  idxs[c] << i
  cnts[c] = 0
end

(1..m).each do |c|
  idxs[c].rotate!
end

ans = "@" * n
(0...n).each do |i|
  col = colors[i]
  idx = idxs[col][cnts[col]]
  ans[idx] = s[i]
  cnts[col] += 1
end

puts ans
