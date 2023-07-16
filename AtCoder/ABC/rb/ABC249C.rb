n, k = gets.split.map(&:to_i)
arr = n.times.map{ gets.chomp.chars }

ans = 0
[0, 1].repeated_permutation(n).each do |bits|
  s = []
  bits.each_with_index do |b, i|
    s += arr[i] if b == 1
  end
  hash = s.tally
  cnt = 0
  hash.each do |_, v|
    cnt += 1 if v == k
  end
  ans = [ans, cnt].max
end

puts ans
