a, b = gets.split.map(&:to_i)

puts [a / Math.hypot(a, b), b / Math.hypot(a, b)].join(' ')

# 別解（複素平面を使った解法）
# P = Complex(*gets.split)
# Q = P/P.abs
# puts "#{Q.real.to_f} #{Q.imag.to_f}"
