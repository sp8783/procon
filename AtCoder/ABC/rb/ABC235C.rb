n, q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

H = Hash.new {|hash, key| hash[key] = []}
A.each_with_index do |a, i|
  H[a] << i+1
end

q.times.each do
  x, k = gets.split.map(&:to_i)
  if H[x][k-1].nil?
    puts -1
  else
    puts H[x][k-1]
  end
end
