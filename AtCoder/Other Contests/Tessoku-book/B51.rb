s = gets.chomp.chars

arr = []
s.each_with_index do |si, i|
  if si == "("
    arr << i+1
  else
    l = arr.pop
    puts "#{l} #{i+1}"
  end
end
