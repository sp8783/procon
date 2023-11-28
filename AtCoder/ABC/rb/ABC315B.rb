m = gets.to_i
d = gets.split.map(&:to_i)

mid = (d.sum + 1) / 2
tmp = 0
d.each_with_index do |di, i|
  if tmp + di >= mid
    puts "#{i+1} #{mid - tmp}"
    break
  else
    tmp += di
  end
end
