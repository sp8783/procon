n = gets.to_i
L = 12
lst = Array.new(L) { |i| ('1' * (i + 1)).to_i }
set = Set.new()

L.times do |i|
  L.times do |j|
    L.times do |k|
      set.add(lst[i] + lst[j] + lst[k])
    end
  end
end

puts set.to_a.sort[n - 1]
