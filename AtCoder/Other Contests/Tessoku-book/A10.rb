n = gets.to_i
lst = gets.split.map(&:to_i)

lst_l = Array.new(n, 0)
lst_r = Array.new(n, 0)

lst_l[0] = lst[0]
lst_r[-1] = lst[-1]

(1...n).each do |i|
  lst_l[i] = [lst_l[i-1], lst[i]].max
  lst_r[-i-1] = [lst_r[-i], lst[-i-1]].max
end

d = gets.to_i
d.times do
  l, r = gets.split.map(&:to_i).map(&:pred)
  puts [lst_l[l-1], lst_r[r+1]].max
end
