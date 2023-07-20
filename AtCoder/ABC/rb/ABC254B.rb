n = gets.to_i

arr = [1, 1]
(1..n).each do |i|
  if i == 1
    puts "1"
  elsif i == 2
    puts "1 1"
  else
    tmp = []
    arr.each_cons(2) { |v| tmp << v.sum }
    arr = [1] + tmp + [1]
    puts arr.join(" ")
  end
end
