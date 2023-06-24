a, b = gets.split.map{ |x| sprintf("%020d", x)}

ans = "Easy"
20.times do |i|
  if a[i].to_i + b[i].to_i >= 10
    ans = "Hard"
    break
  end
end

puts ans
