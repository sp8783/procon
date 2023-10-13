n = gets.to_i
S = gets.chomp.chars
T = gets.chomp.chars

res = S.zip(T).each.all? do |s, t|
  s == t || (["1", "l"].include?(s) && ["1", "l"].include?(t)) || (["0", "o"].include?(s) && ["0", "o"].include?(t))
end

puts res ? "Yes" : "No"
