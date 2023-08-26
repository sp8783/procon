t = gets.to_i
t.times do 
  n = gets.to_i
  arr = gets.split.map(&:to_i)
  puts arr.count{|i| i.odd?}
end
