n, q = gets.split.map(&:to_i)
arr = [0]*n
q.times do
  k, x = gets.split.map(&:to_i)
  case k
  when 1
    arr[x-1] += 1
  when 2
    arr[x-1] += 2
  when 3
    puts arr[x-1] >= 2 ? "Yes" : "No"
  end
end
