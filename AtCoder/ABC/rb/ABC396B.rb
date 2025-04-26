q = gets.to_i
a = [0]*100

q.times do
  case gets.split.map(&:to_i)
    in [1, x]
      a << x
    in [2]
      puts a.pop
  end
end
