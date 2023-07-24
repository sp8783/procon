n = gets.to_i
S = gets.chomp.chars.map(&:to_i)
W = gets.split.map(&:to_i)

hash = Hash.new { |h, k| h[k] = Array.new(2,0) }
S.zip(W).each do |s, w|
  hash[w][s] += 1
end

hash = hash.sort.to_h
ans = S.sum
tmp = S.sum
hash.each do |k, v|
  tmp += v[0] - v[1]
  ans = [ans, tmp].max
end

puts ans
