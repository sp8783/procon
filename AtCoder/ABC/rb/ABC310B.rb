n, m = gets.split.map(&:to_i)
P = []
C = []
F = []
n.times do
  p, c, *f = gets.split.map(&:to_i)
  P << p
  C << c
  F << f
end

ans = "No"
n.times do |i|
  n.times do |j|
    next if i == j
    if P[i] >= P[j] && (F[i] - F[j]).empty? && (P[i] > P[j] || (F[j] - F[i]).size > 0)
      ans = "Yes"
    end
  end
end

puts ans
