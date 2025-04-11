n = gets.to_i
p = gets.split.map(&:to_i)

score_hash = p.tally
order_hash = (1..100).map {|i| [i, 0]}.to_h

order = 1

score_hash.keys.sort.reverse.each do |key|
  order_hash[key] = order
  order += score_hash[key]
end

p.each do |pi|
  puts order_hash[pi]
end
