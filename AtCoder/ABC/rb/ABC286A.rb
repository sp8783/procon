n,p,q,r,s = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

arr[p-1..q-1], arr[r-1..s-1] = arr[r-1..s-1], arr[p-1..q-1]
puts arr.join(" ")
