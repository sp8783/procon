n = gets.to_i
A = gets.split.map(&:to_i).sort.reverse

cnt = 0
idx = n-1

A.each_with_index do |a, i|
  while idx > i
    if a + A[idx] < 10**8
      idx -= 1
    else
      cnt += idx - i
      break
    end
  end
end

puts (A.sum) * (n-1) - cnt * 10**8
