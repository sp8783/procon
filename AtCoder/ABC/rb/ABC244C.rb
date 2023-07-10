N = gets.to_i
arr = (1..(2*N+1)).to_a

while true
  puts arr.shift
  $stdout.flush
  k = gets.to_i
  if k == 0
    exit
  else
    arr -= [k]
  end
end
