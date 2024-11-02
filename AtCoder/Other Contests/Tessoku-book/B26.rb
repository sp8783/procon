n = gets.to_i
arr = Array.new(n+1, true)
arr[0] = arr[1] = false

(2..Integer.sqrt(n)).each do |i|
  j = 2
  while i*j <= n
    arr[i*j] = false
    j += 1
  end
end

arr.each_with_index do |a, i|
  puts i if a
end
