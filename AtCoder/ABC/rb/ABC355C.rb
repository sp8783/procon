n, t = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)

row_count = Array.new(n, 0)
col_count = Array.new(n, 0)
diag1_count = 0
diag2_count = 0
ans = -1

numbers.each_with_index do |num, turn|
  i = num % n - 1
  i = n - 1 if i == -1
  j = (num - 1) / n

  row_count[i] += 1
  col_count[j] += 1
  diag1_count += 1 if i == j
  diag2_count += 1 if i + j == n - 1

  if row_count[i] == n || col_count[j] == n || diag1_count == n || diag2_count == n
    ans = turn + 1
    break
  end
end

puts ans
