h, w = gets.split.map(&:to_i)
h.times do
  arr = gets.split.map(&:to_i)
  puts arr.map{|a| a == 0 ? "." : (a+64).chr}.join  
end
