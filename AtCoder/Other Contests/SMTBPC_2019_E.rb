MOD = 1000000007
N = gets.to_i
A = gets.split.map(&:to_i)

ans = 1
lst = [0] * 3

A.each do |a|
  count_a = lst.count(a)
  ans *= count_a
  ans %= MOD
  break if ans == 0

  lst.each_with_index do |elem, idx|
    if elem == a
      lst[idx] += 1
      break
    end
  end
end

puts ans
