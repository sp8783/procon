n, m = gets.split.map(&:to_i)

sum = 1
(1..m).each do |i|
  sum += n**i
  if sum > 10**9
    puts "inf"
    exit
  end
end

puts sum
