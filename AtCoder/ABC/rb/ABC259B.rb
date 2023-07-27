a,b,d = gets.split.map(&:to_i)

c = Complex(a, b)
theta = d*Math::PI/180

ans = c * Complex(Math.cos(theta), Math.sin(theta))
puts "#{ans.real} #{ans.imag}"
