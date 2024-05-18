n = gets.to_i
rate_sum = 0
lst = []
n.times do
  name, rate = gets.split
  lst << name
  rate_sum += rate.to_i
end

puts lst.sort![rate_sum%n]
