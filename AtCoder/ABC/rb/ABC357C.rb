n = gets.to_i

if n == 0
  puts "#"
  exit
end

lst = ["###", "#.#", "###"]

(n-1).times do |i| 
  tmp = []
  3.times do |j|
    if j != 1
      tmp << lst.map { |l| l*3}
    else
      tmp << lst.map { |l| l + "."*3**(i+1) + l}
    end
  end
  lst = tmp.flatten
end

puts lst.each { |l| l}
