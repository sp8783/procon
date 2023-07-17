n, q = gets.split.map(&:to_i)

ball = *0..n
pos = *0..n

q.times {
  x = gets.to_i
  i = pos[x]
  j = i < n ? i + 1 : i - 1
  y = ball[j]
  ball[i], ball[j], pos[x], pos[y] = y, x, j, i
}
puts ball[1..] * ' '
