while true
  n, x = gets.split.map(&:to_i)
  if n == 0 && x == 0
    exit()
  end

  puts (1..n).to_a.combination(3).count { |a, b, c| a + b + c == x }
end
