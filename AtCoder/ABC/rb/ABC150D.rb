N, M = gets.split.map(&:to_i)
a_lst = gets.split.map(&:to_i)

a_lst.map! { |a| a / 2 }
gcd = a_lst.reduce { |acc, a| acc.lcm(a) }

puts a_lst.all? { |a| (gcd / a) % 2 == 1} ? (M / gcd).divmod(2).sum : 0
