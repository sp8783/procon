n, k = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

ans = 0
space = k

A.each do |a|
  if space >= a
    space -= a
  else
    space = k - a
    ans += 1
  end
end

puts ans + 1
