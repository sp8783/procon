n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

res = (0..a.max).bsearch { |x|
  a.map { |ai| [x, ai].min }.sum > m
}

puts res.nil? ? "infinite" : res - 1
