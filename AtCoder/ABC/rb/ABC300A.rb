n,a,b = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

C.each_with_index do |c, idx|
  puts idx+1 if c == a+b
end
