n, m = gets.split.map(&:to_i)
load = Array.new(n){[0]*n}

m.times do 
  a, b, c = gets.split.map(&:to_i)
  load[a-1][b-1] = c
  load[b-1][a-1] = c
end

ans = 0
[*0...n].permutation do |route|
  sum = 0
  (n-1).times do |i|
    dist = load[route[i]][route[i+1]]
    break if dist == 0
    sum += dist
  end
  ans = [ans, sum].max
end

puts ans
