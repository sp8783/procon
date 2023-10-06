n, t = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)
R = gets.split.map(&:to_i)

tmp = Array.new(n+1)

ans = 0
tmp = -1
t = C[0] unless C.include?(t)
C.zip(R).each_with_index do |arr, idx|
  c, r = arr
  if c == t && r > tmp
    tmp = r
    ans = idx + 1
  end
end

puts ans
