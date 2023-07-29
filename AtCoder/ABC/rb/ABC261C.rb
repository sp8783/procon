n = gets.to_i
hash = Hash.new {|h,k| h[k] = 0}

n.times do
  s = gets.chomp
  if hash[s] == 0
    puts s
  else
    puts "#{s}(#{hash[s]})"
  end
  hash[s] += 1
end
