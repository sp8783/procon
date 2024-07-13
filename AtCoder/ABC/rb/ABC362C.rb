n = gets.to_i
lr = n.times.map { gets.split.map(&:to_i) }

lst = []
sum = 0

lr.each_with_index do |(l, r), idx|
  lst << l
  sum += l
end

if sum > 0
  puts "No"
else
  ans = []
  lr.each do |l, r|
    diff = [-sum, r-l].min
    ans << l + diff
    sum += diff
  end
  if sum == 0
    puts "Yes"
    puts ans.join(" ")
  else
    puts "No"
  end
end

