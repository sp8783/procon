n = gets.to_i
A = gets.split.map(&:to_i)

ans = []

A.each_cons(2) do |i,j|
  if i < j
    ans += (i...j).to_a
  else
    ans += (j+1..i).to_a.reverse
  end
end

ans << A[-1]
puts ans.join(" ")
