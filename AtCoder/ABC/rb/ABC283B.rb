n = gets.to_i
arr = gets.split.map(&:to_i)

q = gets.to_i
q.times do
  i, k, x = gets.split.map(&:to_i)
  if i == 1
    arr[k-1] = x
  else
    puts arr[k-1]
  end
end
