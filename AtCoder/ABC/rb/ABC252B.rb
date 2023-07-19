n, k = gets.split.map(&:to_i)
arrA = gets.split.map(&:to_i)
arrB = gets.split.map(&:to_i)

max = arrA.max
ans = "No"
arrB.each do |b|
  if max == arrA[b-1]
    ans = "Yes"
  end
end

puts ans
