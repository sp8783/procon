a, b, k = gets.split.map(&:to_i)

takahashi = [a-k, 0].max
aoki = [b + [a-k, 0].min, 0].max

puts "#{takahashi} #{aoki}"
