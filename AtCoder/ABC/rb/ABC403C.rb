n, m, q = gets.split.map(&:to_i)
auths = Array.new(n+1) { {} }

q.times do
  case gets.split.map(&:to_i)
  in [1, x, y]
    auths[x][y] = true
  in [2, x]
    auths[x][0] = true
  in [3, x, y]
    puts auths[x][0] || auths[x][y] ? "Yes" : "No"
  end
end
