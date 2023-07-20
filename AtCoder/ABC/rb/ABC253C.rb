require 'set'

q = gets.to_i
h = Hash.new(0)
min = Float::INFINITY
max = -Float::INFINITY
q.times do
  n, x, c = gets.split.map(&:to_i)
  case n
  when 1
    h[x] += 1
    min = [min, x].min
    max = [max, x].max

  when 2
    h[x] -= [c, h[x]].min
    if h[x] == 0
      h.delete(x)
      if h.empty?
        min = Float::INFINITY
        max = -Float::INFINITY
      elsif x == min
        min = h.sort[0][0]
      elsif x == max
        max = h.sort[-1][0]
      end
    end

  when 3
    puts max - min

  end
end
