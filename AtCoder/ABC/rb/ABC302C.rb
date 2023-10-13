n, m = gets.split.map(&:to_i)
S = n.times.map{ gets.chomp.chars }

res = S.permutation.each.any? do |s|
  s.each_cons(2).all? do |a, b|
    a.zip(b).count {|a_i, b_i| a_i != b_i} == 1
  end
end

puts res ? "Yes" : "No"
