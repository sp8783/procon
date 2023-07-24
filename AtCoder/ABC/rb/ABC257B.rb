n, k, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
L = gets.split.map(&:to_i)

L.each do |l|
  l -= 1
  next if a[l] == n

  if l == k-1
    a[l] += 1
  else
    unless a[l+1] - a[l] == 1
      a[l] += 1
    end
  end
end

puts a.join(" ")
