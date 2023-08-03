n, m = gets.split.map(&:to_i)
arr = n.times.map { gets.chomp.chars }

ans = [*0...n].combination(2).count { |i, j|
  m.times.all? { |k| arr[i][k] == "o" || arr[j][k] == "o" }
}
puts ans
