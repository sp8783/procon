n, m = gets.split.map(&:to_i)

[*1..m].combination(n).to_a.each do |arr|
  puts arr.join(" ")
end
