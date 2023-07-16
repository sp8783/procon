a,b,c,d,e,f,x = gets.split.map(&:to_i)

T = b * ((x/(a+c))*a + [x % (a+c), a].min)
A = e * ((x/(d+f))*d + [x % (d+f), d].min)

if T > A
  puts "Takahashi"
elsif T < A
  puts "Aoki"
else
  puts "Draw"
end
