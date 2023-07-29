n = gets.to_i
arr = n.times.map{ gets.chomp.chars }

ans = "correct"
[*0..n-1].permutation(2).to_a.each do |i, j|
  next if i > j

  unless (arr[i][j] == "W" && arr[j][i] == "L") || (arr[i][j] == "L" && arr[j][i] == "W") || (arr[i][j] == "D" && arr[j][i] == "D")
    ans = "incorrect"
    break
  end
end

puts ans
