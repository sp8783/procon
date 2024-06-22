a, b = gets.split.map(&:to_i)

(a..b).each.any? { |i| 100 % i == 0 } ? puts('Yes') : puts('No')
