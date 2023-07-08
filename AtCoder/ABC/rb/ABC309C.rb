n, k = gets.split.map(&:to_i)
arr = n.times.map{gets.split.map(&:to_i)}

s = 0
arr.each do |a, b|
  s += b
end
ar = arr.sort

if s <= k
  puts 1
else
  ar.each do |a, b|
    if s - b <= k
      puts a + 1
      break
    else
      s -= b
    end
  end
end
