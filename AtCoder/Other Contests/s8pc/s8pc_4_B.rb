n, k = gets.split.map(&:to_i)
A = [0] + gets.split.map(&:to_i)

ans = 10**18

(1..n).to_a.combination(k).each do |comb|
  tmp = A.dup
  cnt = 0
  comb.each do |i|
    max_i = tmp[0..i-1].max
    if max_i - tmp[i] >= 0
      cnt += max_i - tmp[i] + 1
      tmp[i] = max_i + 1
    end
  end
  ans = [cnt, ans].min
end

puts ans
