n = gets.to_i
arr_A = gets.split.map(&:to_i)

lst = Array.new(n+1, 0)
ans = []

arr_A.each do |a|
  lst[a] += 1
  if lst[a] == 2
    ans << a
  end  
end

puts ans.join(" ")
