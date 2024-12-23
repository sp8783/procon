n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

lst = Array.new(n+1, false) # i個の時先手が勝つときtrue

(1..n).each do |i|
  a.each do |ai|
    if i >= ai && !lst[i-ai]
      lst[i] = true 
      break
    end
  end
end

puts lst[n] ? 'First' : 'Second'
