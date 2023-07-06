N, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ans = "Yes"
a = a.tally
b.each do |b_i|
  if a[b_i].nil? || a[b_i] == 0
    ans = "No"
  else
    a[b_i] -= 1
  end
end

puts ans
