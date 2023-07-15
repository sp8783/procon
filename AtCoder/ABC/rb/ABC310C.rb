n = gets.to_i
arr = []
arr_rv = []
cnt_one_length = 0
n.times do 
  s = gets.chomp
  cnt_one_length += 1 if s.size == 1
  arr << s
  arr_rv << s.reverse
end

arr_mg = arr.uniq + arr_rv.uniq
hash = arr_mg.tally

ans = 0
tmp = 0

hash.each do |k, v|
  if k.size == 1 || k == k.reverse
    ans += 1
  else
    tmp += 1
  end
end

# p hash
# p ans
# p tmp

puts ans + tmp/2
