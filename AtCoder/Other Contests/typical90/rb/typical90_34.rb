n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

ans = 0
hash = Hash.new(0)
key_cnt = 0
l_idx = 0

a.each_with_index do |ai, r_idx|
  hash[ai] += 1
  if hash[ai] == 1
    key_cnt += 1
    while key_cnt > k
      if hash[a[l_idx]] == 1
        key_cnt -= 1
      end
      hash[a[l_idx]] -= 1
      l_idx += 1
    end
  end
  ans = [ans, r_idx - l_idx + 1].max
end
ans = [ans, n - l_idx].max
puts ans
