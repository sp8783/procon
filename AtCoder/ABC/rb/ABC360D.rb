# n, t = gets.split.map(&:to_i)
# s = gets.to_i.digits.reverse
# x = gets.split.map { |i| (i.to_i)*10}
# p "x: #{x}"

# ans = 0
# lst = Array.new(n) { 0 }

# x.each_with_index do |xi, idx|
#   if s[idx] == 1
#     lst[idx] = xi + (t*10 + 1)
#   else
#     lst[idx] = xi - (t*10 + 1)
#   end
# end
# p "lst: #{lst}"

# lst_sort = lst.sort
# p "lst_sort: #{lst_sort}"
# lst.each_with_index do |li, idx|
#   next_idx = lst_sort.bsearch_index { |x| x >= li } || n
#   ans += (idx - next_idx).abs
# end

# puts ans/2

n, t = gets.split.map(&:to_i)
s = gets.chomp.chars.map(&:to_i)
x = gets.split.map(&:to_i)

ans = 0

# 正の方向に進む蟻と負の方向に進む蟻の位置を分けて保存
right_moving = []
left_moving = []

n.times do |i|
  if s[i] == 1
    right_moving << x[i]
  else
    left_moving << x[i]
  end
end

# それぞれの位置をソート
right_moving.sort!
left_moving.sort!
left_moving_next = left_moving.map { |l| l*10 - 10 * t - 1}
# p "Left moving next: #{left_moving_next}"

# すれ違うペアの数を数える
right_moving.each do |r_pos|
  # p "r_pos: #{r_pos}"
  now_idx = left_moving.bsearch_index { |l_pos| l_pos >= r_pos } || left_moving.size
  # p "now_idx: #{now_idx}"
  # p "r_pos + 10 * t + 1: #{r_pos*10 + 10 * t + 1}"
  next_idx = left_moving_next.bsearch_index { |l_pos| l_pos >= r_pos*10 + 10 * t + 1} || left_moving.size
  # p "next_idx: #{next_idx}"
  ans += (now_idx - next_idx).abs
end

puts ans
