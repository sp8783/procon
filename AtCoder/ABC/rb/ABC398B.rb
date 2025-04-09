a = gets.split.map(&:to_i)
v = a.tally.values.sort.reverse

puts v.length >= 2 && v[0] >= 3 && v[1] >= 2 ? 'Yes' : 'No'
