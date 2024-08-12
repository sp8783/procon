n = gets.to_i
s = n.times.map { gets.chomp }

m = s.map(&:length).max
t = Array.new(m) { "*" * n }

s.each_with_index do |si, i|
  si.chars.each_with_index do |c, j|
    t[j][n - i - 1] = c
  end
end

t.map! { |line| line.gsub(/\*+$/, '') }

t.each { |line| puts line }
