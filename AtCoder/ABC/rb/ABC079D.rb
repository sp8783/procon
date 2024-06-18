H, W = gets.split.map(&:to_i)
mp = 10.times.map{ gets.split.map(&:to_i) }
A = H.times.map{ gets.split.map(&:to_i) }

10.times do |k|
  10.times do |i|
    10.times do |j|
      mp[i][j] = [mp[i][j], mp[i][k] + mp[k][j]].min
    end
  end
end

ans = 0
H.times do |i|
  W.times do |j|
    if (A[i][j] != -1) && (A[i][j] != 1)
      ans += mp[A[i][j]][1]
    end
  end
end

puts ans
