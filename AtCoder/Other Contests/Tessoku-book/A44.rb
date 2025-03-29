n, q = gets.split.map(&:to_i)
arr = (1..n).to_a
rev = false

q.times do
  query, x, y = gets.split.map(&:to_i)
  case query
  when 1
    arr[rev ? -x : x - 1] = y
  when 2
    rev ^= true
  when 3
    puts arr[rev ? -x : x - 1]
  end
end
