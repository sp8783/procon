n = gets.to_i
a = gets.chomp.split.map(&:to_i).sort!

s = a.sum
rem = s % n
b = Array.new(n, s / n)
rem.times do |i|
  b[n - 1 - i] += 1
end

puts (0...n).map {|i| [0, a[i] - b[i]].max }.sum
