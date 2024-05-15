n = gets.to_i
S = gets.split.map(&:to_i)
q = gets.to_i
T = gets.split.map(&:to_i)

puts T.count { |t| S.bsearch { |s| s >= t } == t }
