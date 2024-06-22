require 'numo/narray'

n = gets.to_i
a = [0] + gets.split.map(&:to_i)
a = Numo::Int32[*a].cumsum

q = gets.to_i
q.times do
  l, r = gets.split.map(&:to_i)
  if (a[r] - a[l-1]) * 2 > (r - l + 1)
    puts "win"
  elsif (a[r] - a[l-1]) * 2 < (r - l + 1)
    puts "lose"
  else
    puts "draw"
  end
end
