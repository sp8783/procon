S = gets.chomp.chars
a, b = gets.split.map(&:to_i)

S[a-1], S[b-1] = S[b-1], S[a-1]
puts S.join
