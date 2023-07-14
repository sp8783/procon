s = gets.chomp.chars.map(&:to_i)
ans = (0..9).to_a - s
puts ans[0]
