n = gets.to_i
a = gets.split.map(&:to_i)

dic = {}
a.uniq.sort.each_with_index do |ai, i|
  dic[ai] = i+1
end

puts a.map { |ai| dic[ai] }.join(' ')
