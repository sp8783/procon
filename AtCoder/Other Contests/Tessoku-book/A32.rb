n, a, b = gets.split.map(&:to_i)

lst = Array.new(n+1, false) # i個の時先手が勝つときtrue

(1..n).each do |i|
  lst[i] = true if i >= a && !lst[i-a]
  lst[i] = true if i >= b && !lst[i-b]
end

puts lst[n] ? 'First' : 'Second'  
