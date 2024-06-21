n, k = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)

ans = "No"
P.each do |p|
  Q.each do |q|
    ans = "Yes" if p + q == k
  end
end

puts ans
