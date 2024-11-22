n = gets.to_i
a = n.times.map { gets.split.map(&:to_i) }

m = gets.to_i
pairs = Array.new(n) { Array.new(n, false) }
m.times do
  i, j = gets.split.map(&:to_i)
  pairs[i - 1][j - 1] = true
  pairs[j - 1][i - 1] = true
end

ans = Float::INFINITY
[*0...n].permutation(n) do |perm|
  # p "perm: #{perm}"
  sum = 0
  flag = true
  perm.each_with_index do |i, j|
    # p "  i: #{i}, j: #{j}"
    if j < n - 1 && pairs[i][perm[j + 1]]
      flag = false
      break
    end
    sum += a[i][j]
    # p "  sum: #{sum}"
  end
  # p "All_sum: #{sum}, flag: #{flag}"
  ans = [ans, sum].min if flag
  # p "ans: #{ans}"
end

puts ans == Float::INFINITY ? -1 : ans
