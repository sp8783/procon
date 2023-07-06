N, X = gets.split.map(&:to_i)

arr = [0]
N.times do
  a, b = gets.split.map(&:to_i)
  tmp = []
  arr.each do |i|
    tmp << i + a
    tmp << i + b
  end
  arr = tmp.uniq
end

puts arr.include?(X) ? :Yes : :No
