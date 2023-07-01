n, m = gets.split.map(&:to_i)
C = gets.split
D = gets.split
s, *S = gets.split.map(&:to_i)

h = Hash.new {|hash, key| hash[key] = s}
D.zip(S) do |k, v|
  h[k] = v
end

ans = 0
C.each do |c|
  ans += h[c]
end

puts ans
# p h
# p D
# p S
