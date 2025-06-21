n = gets.to_i
s = n.times.map { gets.chomp.chars }
t = n.times.map { gets.chomp.chars }

diffs = (0..3).to_a

diff = 0
n.times do |i|
  diff += s[i].zip(t[i]).count { |a, b| a != b }
end
diffs[0] += diff

(1..3).each do |i|
  # sを90度回転
  s = s.transpose.map(&:reverse)

  diff = 0
  n.times do |j|
    diff += s[j].zip(t[j]).count { |a, b| a != b }
  end
  diffs[i] += diff
end

puts diffs.min
