n, m = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

lst = (A + B).sort
flag = false

lst.each_cons(2) do |i, j|
  flag = true if A.include?(i) && A.include?(j)
end

puts flag ? 'Yes' : 'No'
