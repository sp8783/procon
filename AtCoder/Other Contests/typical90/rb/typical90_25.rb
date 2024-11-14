n, b = gets.split.map(&:to_i)

# あり得るf(m)を列挙する
fm = Set.new
(1..n.digits.size).each do |i|
  (0..9).to_a.repeated_combination(i) do |arr|
    fm << arr.inject(:*)
  end
end

# m - f(m) = b となるf(m)をカウントする
ans = fm.count do |f|
  m = b + f
  next if m > n
  f == m.digits.inject(:*)
end

puts ans
