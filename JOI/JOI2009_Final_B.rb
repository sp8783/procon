d = gets.to_i
n = gets.to_i
m = gets.to_i
store = ((n-1).times.map{ gets.to_i } + [0, d]).sort
customer = m.times.map{ gets.to_i }

ans = customer.map do |c|
  idx = store.bsearch_index { |s| s >= c }
  [(store[idx] - c).abs, (c - store[idx-1]).abs].min
end.sum

puts ans
