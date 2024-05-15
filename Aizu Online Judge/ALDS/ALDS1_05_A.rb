n = gets.to_i
A = gets.split.map(&:to_i)

memo = Array.new(n+1) {false}

[0, 1].repeated_permutation(n) do |bits|
  sum = 0
  n.times do |i|
    sum += A[i] if bits[i] == 1
  end
  memo[sum] = true
end

_ = gets.to_i
Q = gets.split.map(&:to_i)

Q.each do |q|
  puts memo[q] ? 'yes' : 'no'
end
