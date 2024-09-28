n = gets.to_i
wx = n.times.map { gets.split.map(&:to_i) }

lst = Array.new(24, 0)
wx.each do |w, x|
  9.times do |i|
    lst[(x+i)%24] += w
  end
end

puts lst.max
