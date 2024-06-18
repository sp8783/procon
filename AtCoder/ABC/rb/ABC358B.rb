n, a = gets.split.map(&:to_i)
T = gets.split.map(&:to_i)

time = 0
T.each do |t|
  time = [time, t].max + a
  puts time
end
