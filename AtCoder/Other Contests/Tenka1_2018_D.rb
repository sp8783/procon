n = gets.to_i
k = Math::sqrt(2 * n).to_i + 1

if k * (k - 1) / 2 != n
  puts "No"
  exit
end

s = Array.new(k) { [k - 1] }
(1...k).each do |j|
  (0...j).each do |i|
    e = (j - 1) * j / 2 + i + 1
    s[i] << e
    s[j] << e
  end
end

puts "Yes"
puts k
s.each {|x| puts x.join(" ") }
