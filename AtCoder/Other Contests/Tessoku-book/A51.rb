q = gets.to_i
arr = []
q.times do 
  r, s = gets.chomp.split
  case r
  when "1"
    arr << s
  when "2"
    puts arr[-1]
  when "3"
    arr.pop
  end
end
