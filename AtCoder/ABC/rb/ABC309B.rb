n = gets.to_i
A = n.times.map{gets.chomp.chars}

B = Array.new(n) { Array.new(n,"0") }

if n >= 3
  n.times do |i|
    if i == 0
      arr = A[i+1][0] + A[i][0..n-2].join
    elsif i == n-1
      arr = A[i][1..n-1].join + A[i-1][-1]
    else
      arr = A[i+1][0] + A[i][1..n-2].join + A[i-1][-1]
    end
    puts arr
  end
else
  puts A[1][0] + A[0][0]
  puts A[1][1] + A[0][1]
end
