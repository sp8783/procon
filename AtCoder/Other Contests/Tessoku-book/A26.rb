q = gets.to_i
q.times do
  x = gets.to_i
  puts (2..Integer.sqrt(x)).any? { |i| x % i == 0 } ? "No" : "Yes"
end
