n = gets.split.map(&:to_i)

hash_lst = 3.times.map { Hash.new(0) }

3.times do |i|
  lst = gets.split.map(&:to_i)
  lst.each do |num|
    hash_lst[i][num%46] += 1
  end
end

ans = 0
46.times do |i|
  next if hash_lst[0][i].zero?
  46.times do |j|
    next if hash_lst[1][j].zero?
    46.times do |k|
      next if hash_lst[2][k].zero?
      if (i + j + k) % 46 == 0
        ans += hash_lst[0][i] * hash_lst[1][j] * hash_lst[2][k]
      end
    end
  end
end

puts ans
