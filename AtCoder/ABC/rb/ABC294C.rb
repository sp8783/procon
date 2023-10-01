n, m = gets.split.map(&:to_i)
A = gets.split.map(&:to_i) + [10**10]
B = gets.split.map(&:to_i) + [10**10]
i, j = 0, 0
ans = [[],[]]

(n+m).times do |k|
  if A[i] < B[j]
    ans[0] << k+1
    i = [i+1, n].min
  else
    ans[1] << k+1
    j = [j+1, m].min
  end
end

puts ans[0].join(" ")
puts ans[1].join(" ")
